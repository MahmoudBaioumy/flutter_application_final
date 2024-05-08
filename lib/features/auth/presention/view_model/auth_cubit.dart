import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_2/features/auth/presention/view_model/auth_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitState());

  /// login
  login(String email, String password) {
    emit(loginloadingState());
    try {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        emit(loginSuccesState());
      });
    } catch (e) {
      emit(loginErrorState(error: ' some thing is worng'));
    }
  }

// register
  register(String name, String email, String password) async {
    emit(RegisterloadingState());
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        adduser(name, '', email, '', '', '');
        emit(RegisterSuccesState());
      });
      User user = credential.user!;
      await user.updateDisplayName(name);

      //firestore
      // FirebaseFirestore.instance.collection('User').doc(user.uid).set({
      //   'name': name,
      //   'image': '',
      //   'email': user.email,
      //   'phone': '',
      //   'age': Null,
      //   'city': '',
      // });
      SetOptions(merge: true);
      emit(RegisterSuccesState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterErrorState(error: 'your password weak'));
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterErrorState(
            error: 'The account already exists for that email.'));
      } else {
        print(e);
        emit(RegisterErrorState(error: 'OOPS Something wrong'));
      }
    }
  }

  adduser(String name, String image, String email, String phone, String age,
      String city) async {
    try {
      final user = FirebaseFirestore.instance.collection('user');
      await user.doc(email).set({
        'name': name,
        'image': '',
        'email': email,
        'phone': '',
        'age': '',
        'city': '',
      }).then((value) {
        print('successsss');
      }).catchError((error) {
        print('add user error $error');
      });
      emit(RegisterSuccesState());
    } catch (e) {
      print('catch error');
      print(e);
    }
  }
}
