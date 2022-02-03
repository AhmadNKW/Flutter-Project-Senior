// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_auth/ListView/teacher_info.dart.dart';
import 'package:flutter_auth/Screens/02_1%20Signup/components/signup_background.dart';
import 'package:flutter_auth/Screens/A_05%20Teacher_Busy_Days_And_Times/Teacher_Busy_Days_And_Times_screen.dart';
import 'package:flutter_auth/Screens/B_06%20Student_Edu/student_edu_screen.dart';
import 'package:flutter_auth/Screens/B_07%20Student_Material/student_material_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_button2.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_input_field_BIO.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

int v = -1;
bool v1 = false;
bool v2 = false;
bool v3 = false;
int v4 = -1;
int v5 = -1;
bool v6 = false;
bool v7 = false;
bool v8 = false;
bool v9 = false;
bool v10 = false;
bool v11 = false;
int v12 = -1;
List<dynamic> productTypesList = [
  {"id": "الصف الأول", "name": "الصف الأول"},
  {"id": "الصف الثاني", "name": "الصف الثاني"},
  {"id": "الصف الثالث", "name": "الصف الثالث"},
  {"id": "الصف الرابع", "name": "الصف الرابع"},
  {"id": "الصف الخامس", "name": "الصف الخامس"},
  {"id": "الصف السادس", "name": "الصف السادس"},
  {"id": "الصف السابع", "name": "الصف السابع"},
  {"id": "الصف الثامن", "name": "الصف الثامن"},
  {"id": "الصف التاسع", "name": "الصف التاسع"},
  {"id": "الصف العاشر", "name": "الصف العاشر"},
  {"id": "الصف الحادي عشر", "name": "الصف الحادي عشر"},
  {"id": "الصف الباكالوريا", "name": "الصف الباكالوريا"},
];
final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

class StudentMaterialBody extends StatefulWidget {
  @override
  State<StudentMaterialBody> createState() => _StudentMaterialBodyState();
}

@override
void initState() {}

class _StudentMaterialBodyState extends State<StudentMaterialBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: size.height * 0.05),
          SvgPicture.asset("assets/icons/Drousi.svg"),
          Column(children: [
            Padding(padding: EdgeInsets.all(20)),
            Container(
              width: 350,
              padding: EdgeInsetsDirectional.all(22),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      color: Colors.grey.withOpacity(0.8),
                    )
                  ]),
              child: Column(children: [
                //إختر الدرجة التعليمية رجاءً
                Text(
                  "إختر مادة رجاءً ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: size.height * 0.04),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RoundedButton2(text: "الكيمياء", x: 45, y: 90, press: () {}),
                  Padding(padding: EdgeInsets.all(4)),
                  RoundedButton2(text: "الفيزياء", x: 45, y: 90, press: () {}),
                  Padding(padding: EdgeInsets.all(4)),
                  RoundedButton2(
                      text: "الرياضيات  ",
                      x: 45,
                      y: 90,
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return StudentMaterialScreen();
                            },
                          ),
                        );
                      }),
                ]),
                SizedBox(height: size.height * 0.01),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RoundedButton2(text: "الفرنسي", x: 45, y: 90, press: () {}),
                  Padding(padding: EdgeInsets.all(4)),
                  RoundedButton2(text: "الإنكليزي", x: 45, y: 90, press: () {}),
                  Padding(padding: EdgeInsets.all(4)),
                  RoundedButton2(text: "العلوم", x: 45, y: 90, press: () {}),
                ]),
                SizedBox(height: size.height * 0.01),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RoundedButton2(text: "الديانة", x: 45, y: 90, press: () {}),
                  Padding(padding: EdgeInsets.all(4)),
                  RoundedButton2(text: "الوطنية", x: 45, y: 90, press: () {}),
                  Padding(padding: EdgeInsets.all(4)),
                  RoundedButton2(text: "العربية", x: 45, y: 90, press: () {}),
                ]),
              ]),
            ),
          ]),
        ],
      ),
    ));
  }
}