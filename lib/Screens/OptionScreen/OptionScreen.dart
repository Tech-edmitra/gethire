import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/Screens/CreateProfile/Createprofile1.dart';
import 'package:gethire/Screens/OptionScreen/OptionScreenWidgets/Optionscreenotp.dart';
import 'package:gethire/Screens/OptionScreen/OptionScreenWidgets/phoneVerification.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class OptionScreen extends StatefulWidget {
  const OptionScreen({super.key});

  @override
  State<OptionScreen> createState() => _OptionScreenState();

  void _showBottomSheetPhone(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.fw),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 13, 13),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.fh),
                      topRight: Radius.circular(10.fh))),
              height: 500.fh,
              width: 396.fw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.fh,
                  ),
                  CircleAvatar(
                      radius: 50,
                      backgroundColor: Color.fromRGBO(50, 82, 187, 0.1),
                      child: Image.asset("assets/icons/Android.png")),
                  SizedBox(
                    height: 20.fh,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.fw),
                    child: Row(
                      children: [
                        AutoSizeText("opt up",
                            style: getFontStyle(
                                color: AppTheme.blackFontColor,
                                textType: TextType.heading,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.fh,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.fw),
                    child: Row(
                      children: [
                        AutoSizeText("Please enter your phone number here",
                            style: getFontStyle(
                                color: AppTheme.blackFontColor,
                                textType: TextType.text,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.fh,
                  ),
                  MyphoneNumber(),
                ],
              ),
            ),
          );
        });
  }

  void OtpScreen(BuildContext context) {}

}

class _OptionScreenState extends State<OptionScreen> {
  bool isSwitched = true;
  bool Continue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        Positioned.fill(
          child: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 90.fh,
                ),
                Container(
                  height: 280.fh,
                  width: 302.fw,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/images/OptonScreenPng1.png',
                          ))),
                ),
                SizedBox(
                  height: 30.fh,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.fw),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AutoSizeText(" Kick start your day by getting up early.",
                          textAlign: TextAlign.center,
                          style: getFontStyle(
                              color: AppTheme.blackFontColor,
                              textType: TextType.heading,
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: 10.fh,
                      ),
                      AutoSizeText("Please select the option you need",
                          style: getFontStyle(
                              color: AppTheme.blackFontColor,
                              textType: TextType.smallText,
                              fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: 40.fh,
                      ),
                      SizedBox(
                        height: 25.fh,
                      ),
                      Ink(
                        child: InkWell(
                          child: Container(
                            height: 44.fh,
                            width: 354.fw,
                            decoration: BoxDecoration(
                                color: isSwitched
                                    ? Color.fromARGB(255, 255, 255, 255)
                                    : Color(0xFF3252BB),
                                border: Border.all(color: Color(0xFF3252BB)),
                                borderRadius: BorderRadius.circular(10.fh)),
                            child: Center(
                              child: AutoSizeText("Post job",
                                  style: getFontStyle(
                                      color: isSwitched
                                          ? Color(0xFF3252BB)
                                          : Color.fromARGB(255, 255, 255, 255),
                                      textType: TextType.text,
                                      fontWeight: FontWeight.w700)),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              isSwitched = false;

                              Showbottoombarphone(context);
                            });
                          },
                        ),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ])),
    );
  }

  Future<dynamic> Showbottoombarphone(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        barrierColor: Color.fromRGBO(50, 82, 187, 0.3),
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 10.fw,
                  right: 10.fw,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.fh),
                        topRight: Radius.circular(10.fh))),
                height: 400.fh,
                width: 396.fw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.fh,
                    ),
                    CircleAvatar(
                        radius: 50,
                        backgroundColor: Color.fromRGBO(50, 82, 187, 0.1),
                        child: Image.asset("assets/icons/Android.png")),
                    SizedBox(
                      height: 20.fh,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.fw),
                      child: Row(
                        children: [
                          AutoSizeText("Sign up",
                              style: getFontStyle(
                                  color: AppTheme.blackFontColor,
                                  textType: TextType.heading,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.fh,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.fw),
                      child: Row(
                        children: [
                          AutoSizeText("Please enter your phone number here",
                              style: getFontStyle(
                                  color: AppTheme.blackFontColor,
                                  textType: TextType.smallText,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.fh,
                    ),
                    MyphoneNumber(),
                    SizedBox(
                      height: 20.fh,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     GestureDetector(
                    //       onTap: () {
                    //         Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => OptionScreenOTP()));
                    //       },
                    //       child: Container(
                    //         height: 42.fh,
                    //         width: 131.fw,
                    //         decoration: BoxDecoration(
                    //             color: Color(0xFF3252BB),
                    //             borderRadius: BorderRadius.circular(20)),
                    //         child: Center(
                    //           child: AutoSizeText("Continue",
                    //               style: getFontStyle(
                    //                   color: Color(0xFFFFFFFF),
                    //                   textType: TextType.text,
                    //                   fontWeight: FontWeight.w700)),
                    //         ),
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: 10.fw,
                    //     )
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  //   Scaffold(
  //       backgroundColor: Colors.white,
  //       body: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[

  //           ],
  //         ),
  //       ));
  // }

  void _showBottomSheetPhone(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.fw),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 13, 13),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.fh),
                      topRight: Radius.circular(10.fh))),
              height: 500.fh,
              width: 396.fw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.fh,
                  ),
                  CircleAvatar(
                      radius: 50,
                      backgroundColor: Color.fromRGBO(50, 82, 187, 0.1),
                      child: Image.asset("assets/icons/Android.png")),
                  SizedBox(
                    height: 20.fh,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.fw),
                    child: Row(
                      children: [
                        AutoSizeText("Sign up",
                            style: getFontStyle(
                                color: AppTheme.blackFontColor,
                                textType: TextType.heading,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.fh,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.fw),
                    child: Row(
                      children: [
                        AutoSizeText("Please enter your phone number here",
                            style: getFontStyle(
                                color: AppTheme.blackFontColor,
                                textType: TextType.text,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.fh,
                  ),
                  MyphoneNumber(),
                  SizedBox(
                    height: 20.fh,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 42.fh,
                          width: 131.fw,
                          decoration: BoxDecoration(
                              color: Color(0xFF3252BB),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: AutoSizeText("Continue",
                                style: getFontStyle(
                                    color: Color(0xFFFFFFFF),
                                    textType: TextType.text,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  OtpScreen(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.fw),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 13, 13),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.fh),
                      topRight: Radius.circular(10.fh))),
              height: 500.fh,
              width: 396.fw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.fh,
                  ),
                  CircleAvatar(
                      radius: 50,
                      backgroundColor: Color.fromRGBO(50, 82, 187, 0.1),
                      child: Image.asset("assets/icons/Android.png")),
                  SizedBox(
                    height: 20.fh,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.fw),
                    child: Row(
                      children: [
                        AutoSizeText("opt up",
                            style: getFontStyle(
                                color: AppTheme.blackFontColor,
                                textType: TextType.heading,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.fh,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.fw),
                    child: Row(
                      children: [
                        AutoSizeText("Please enter your phone number here",
                            style: getFontStyle(
                                color: AppTheme.blackFontColor,
                                textType: TextType.text,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.fh,
                  ),
                  MyphoneNumber(),
                ],
              ),
            ),
          );
        });
  }
}
