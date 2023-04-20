import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/Screens/CreateProfile/CreateprofileWidget/textFieldReceut.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class CreateProfile3 extends StatefulWidget {
  const CreateProfile3({super.key});

  @override
  State<CreateProfile3> createState() => _CreateProfile3State();
}

class _CreateProfile3State extends State<CreateProfile3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.fw),
            child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 25.fh,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25.fh,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.fh,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText("Add Educational Details ",
                          style: getFontStyle(
                              color: AppTheme.blackFontColor,
                              textType: TextType.heading,
                              fontWeight: FontWeight.w400)),
                      AutoSizeText("Skip",
                          style: getFontStyle(
                              color: Color(0xFF3252BB),
                              textType: TextType.text,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  SizedBox(
                    height: 25.fh,
                  ),
                  Container(
                    width: 380.fw,
                    height: 530.fh,
                    decoration: BoxDecoration(
                      color: AppTheme.whiteColor,
                      borderRadius: BorderRadius.circular(10.fh),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                          offset: Offset(0, 0),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30.fh,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.fh,
                  ),
                  Container(
                    width: 345.fw,
                    height: 44.fh,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.fw,
                        color: AppTheme.primaryColor,
                      ),
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10.fh),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                          offset: Offset(0, 2),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Center(
                      child: AutoSizeText("+ Add More",
                          style: getFontStyle(
                              color: AppTheme.primaryColor,
                              textType: TextType.text,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                  SizedBox(
                    height: 20.fh,
                  ),
                  Container(
                    width: 345.fw,
                    height: 44.fh,
                    decoration: BoxDecoration(
                      color: Color(0xFF3252BB),
                      borderRadius: BorderRadius.circular(10.fh),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Center(
                      child: AutoSizeText("Post Job",
                          style: getFontStyle(
                              color: AppTheme.whiteColor,
                              textType: TextType.text,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                  SizedBox(
                    height: 30.fh,
                  ),
                ]),
          ),
        ),
      ])),
    );
  }
}
