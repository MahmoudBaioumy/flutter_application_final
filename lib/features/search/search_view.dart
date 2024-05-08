import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_svg/svg.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<search> {
  final TextEditingController _textController = TextEditingController();
  String search = '';
  int _length = 0;

  @override
  void initState() {
    super.initState();
    search = _textController.text;
    _length = search.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' SEARCH For what want ',
          style: GetTitleStyle(color: AppColors.whitecolor, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  )
                ],
              ),
              child: TextField(
                onChanged: (searchKey) {
                  setState(
                    () {
                      search = searchKey;
                      _length = search.length;
                    },
                  );
                },
                decoration: InputDecoration(
                  hintText: "search",
                  hintStyle: GetbodyStyle(),
                  suffixIcon: SizedBox(
                      width: 50,
                      child: Icon(Icons.search, color: AppColors.blackcolor)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  child: _length == 0
                      ? Center(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _length = 1;
                                      });
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child:
                                              Image.asset('assets/search1.png'),
                                        ),
                                        Container(
                                          height: 200,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child:
                                              Image.asset('assets/search2.png'),
                                        ),
                                        Container(
                                          height: 200,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child:
                                              Image.asset('assets/search3.png'),
                                        ),
                                        Container(
                                          height: 200,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child:
                                              Image.asset('assets/search4.png'),
                                        ),
                                      ],
                                    )),
                                SvgPicture.asset(
                                  'assets/no-search.svg',
                                  width: 250,
                                ),
                              ],
                            ),
                          ),
                        )
                      : null),
            ),
          ],
        ),
      ),
    );
  }
}
