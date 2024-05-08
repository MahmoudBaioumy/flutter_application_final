class AuthStates {}

class AuthInitState extends AuthStates {}

// login

class loginloadingState extends AuthStates {}

class loginSuccesState extends AuthStates {}

class loginErrorState extends AuthStates {
  final String error;

  loginErrorState({required this.error});
}

// signup

class RegisterloadingState extends AuthStates {}

class RegisterSuccesState extends AuthStates {}

class RegisterErrorState extends AuthStates {
   final String error;

  RegisterErrorState({required this.error});

 
}
