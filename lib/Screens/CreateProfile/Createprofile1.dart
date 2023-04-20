import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/Screens/CreateProfile/CreateprofileWidget/textFieldReceut.dart';
import 'package:gethire/Screens/CreateProfile/Createprofilr2.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class CreateProfile1 extends StatefulWidget {
  const CreateProfile1({super.key});

  @override
  State<CreateProfile1> createState() => _CreateProfile1State();
}

class _CreateProfile1State extends State<CreateProfile1> {
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
                      AutoSizeText("Recruiter Details ",
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
                    height: 720.fh,
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
                          name: " Company Name",
                          hint: "Enter company name",
                        ),
                        SizedBox(
                          height: 30.fh,
                        ),
                        TextFieldRrecrut(
                          name: " Industry",
                          hint: "Enter industry",
                        ),
                        SizedBox(
                          height: 30.fh,
                        ),
                        TextFieldRrecrut(
                          name: " Website",
                          hint: "Enter Your website link",
                        ),
                        SizedBox(
                          height: 30.fh,
                        ),
                        TextFieldRrecrut(
                          name: " GST Number",
                          hint: "Enter GST number",
                        ),
                        SizedBox(
                          height: 30.fh,
                        ),
                        OptionalTextFieldRrecrut(
                          name: " CIN Number",
                          hint: "Enter CIN Number",
                        ),
                        SizedBox(
                          height: 30.fh,
                        ),
                        BigTextFieldRrecrut(
                          name: " Company Description",
                          hint: "Enter company description",
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
                              builder: (context) => CreateProfile2()));
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
