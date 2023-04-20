import 'package:flutter/material.dart';
import 'package:gethire/sizeConfig.dart';
import 'package:gethire/theme.dart';

class TextFieldRrecrut extends StatelessWidget {
  final String name;
  final String hint;

  const TextFieldRrecrut({
    super.key,
    required this.name,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.fw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,
              style: getFontStyle(
                  color: AppTheme.blackFontColor,
                  textType: TextType.smallText,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            height: 10.fh,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromARGB(102, 0, 0, 0).withOpacity(0.1)),
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10.fh),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(90, 0, 0, 0).withOpacity(0.1),
                  offset: Offset(0, 4),
                  blurRadius: 6,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: getFontStyle(
                    color: AppTheme.graywhite,
                    fontSize: 10.fh,
                    fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.fh),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.only(left: 20.fw, bottom: 11.fh, top: 11.fh),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BigTextFieldRrecrut extends StatelessWidget {
  final String name;
  final String hint;

  const BigTextFieldRrecrut({
    super.key,
    required this.name,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.fw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,
              style: getFontStyle(
                  color: AppTheme.blackFontColor,
                  textType: TextType.smallText,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            height: 10.fh,
          ),
          Container(
            height: 130.fh,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromARGB(102, 0, 0, 0).withOpacity(0.1)),
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10.fh),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(90, 0, 0, 0).withOpacity(0.1),
                  offset: Offset(0, 4),
                  blurRadius: 6,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: getFontStyle(
                    color: AppTheme.graywhite,
                    fontSize: 10.fh,
                    fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.fh),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.only(left: 20.fw, bottom: 11.fh, top: 11.fh),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OptionalTextFieldRrecrut extends StatelessWidget {
  final String name;
  final String hint;

  const OptionalTextFieldRrecrut({
    super.key,
    required this.name,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.fw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name,
                  style: getFontStyle(
                      color: AppTheme.blackFontColor,
                      textType: TextType.smallText,
                      fontWeight: FontWeight.w400)),
              Text("Optional ",
                  style: getFontStyle(
                      color: AppTheme.graywhite,
                      fontSize: 10.fw,
                      fontWeight: FontWeight.w400)),
            ],
          ),
          SizedBox(
            height: 10.fh,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromARGB(102, 0, 0, 0).withOpacity(0.1)),
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10.fh),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(90, 0, 0, 0).withOpacity(0.1),
                  offset: Offset(0, 4),
                  blurRadius: 6,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: getFontStyle(
                    color: AppTheme.graywhite,
                    fontSize: 10.fh,
                    fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.fh),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.only(left: 20.fw, bottom: 11.fh, top: 11.fh),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowTextFieldRrecrut extends StatelessWidget {
  final String name1;
  final String hint1;
  final String name2;
  final String hint2;

  const RowTextFieldRrecrut({
    super.key,
    required this.name1,
    required this.hint1,
    required this.name2,
    required this.hint2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.fw),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name1,
                  style: getFontStyle(
                      color: AppTheme.blackFontColor,
                      textType: TextType.smallText,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                height: 10.fh,
              ),
              Container(
                width: 130.fw,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(102, 0, 0, 0).withOpacity(0.1)),
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10.fh),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(90, 0, 0, 0).withOpacity(0.1),
                      offset: Offset(0, 4),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: hint1,
                    hintStyle: getFontStyle(
                        color: AppTheme.graywhite,
                        fontSize: 10.fh,
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.fh),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 10.fw, bottom: 11.fh, top: 11.fh),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name1,
                  style: getFontStyle(
                      color: AppTheme.blackFontColor,
                      textType: TextType.smallText,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                height: 10.fh,
              ),
              Container(
                width: 130.fw,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(102, 0, 0, 0).withOpacity(0.1)),
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10.fh),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(90, 0, 0, 0).withOpacity(0.1),
                      offset: Offset(0, 4),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: hint1,
                    hintStyle: getFontStyle(
                        color: AppTheme.graywhite,
                        fontSize: 10.fh,
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.fh),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 10.fw, bottom: 11.fh, top: 11.fh),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
