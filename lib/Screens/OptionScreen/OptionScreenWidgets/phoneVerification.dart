import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gethire/Screens/OptionScreen/OptionScreen.dart';
import 'package:gethire/Screens/OptionScreen/OptionScreenWidgets/phoneVerification.dart';

import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'phoneVerification.dart';

class MyphoneNumber extends StatefulWidget {
  final OptionScreen opt = OptionScreen();
  @override
  _MyphoneNumberState createState() => _MyphoneNumberState();
}

class _MyphoneNumberState extends State<MyphoneNumber> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.fw),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFB1B1B1)),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.fw),
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      print(value);
                    },
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    initialValue: number,
                    textFieldController: controller,
                    formatInput: true,
                    keyboardType: TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.fh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      widget.opt.OtpScreen(context);
                      formKey.currentState?.save();
                    },
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
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
