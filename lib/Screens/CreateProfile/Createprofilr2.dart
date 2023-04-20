import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/Screens/CreateProfile/CreateprofileWidget/textFieldReceut.dart';
import 'package:gethire/Screens/CreateProfile/createprofile3.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class CreateProfile2 extends StatefulWidget {
  const CreateProfile2({super.key});

  @override
  State<CreateProfile2> createState() => _CreateProfile2State();
}

class _CreateProfile2State extends State<CreateProfile2> {
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
                      AutoSizeText("Add Contact Details ",
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
                        TextFieldRrecrut(
                          name: " Mobile Number",
                          hint: "Enter your mobile number",
                        ),
                        SizedBox(
                          height: 30.fh,
                        ),
                        TextFieldRrecrut(
                          name: " Email Address",
                          hint: "Enter your email address",
                        ),
                        SizedBox(
                          height: 30.fh,
                        ),
                        TextFieldRrecrut(
                          name: " Linkedin URL",
                          hint: "Enter linkedin URL",
                        ),
                        SizedBox(
                          height: 30.fh,
                        ),
                        RowTextFieldRrecrut(
                          name1: " City",
                          hint1: "Enter City",
                          name2: " Area",
                          hint2: "Enter Area",
                        ),
                        SizedBox(
                          height: 30.fh,
                        ),
                        TextFieldRrecrut(
                          name: " Website",
                          hint: "Enter website",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.fh,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateProfile3()));
                    },
                    child: Container(
                      width: 345.fw,
                      height: 44.fh,
                      decoration: BoxDecoration(
                        color: Color(0xFF3252BB),
                        borderRadius: BorderRadius.circular(10.fh),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Color.fromARGB(255, 0, 0, 0).withOpacity(0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Center(
                        child: AutoSizeText("Save & Continue",
                            style: getFontStyle(
                                color: AppTheme.whiteColor,
                                textType: TextType.text,
                                fontWeight: FontWeight.w700)),
                      ),
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
