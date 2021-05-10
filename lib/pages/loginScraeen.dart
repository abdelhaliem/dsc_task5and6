import 'package:dsc_task5/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:dsc_task5/toolsImages.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool passwordvisible = true;
  var mycontroller = TextEditingController();
  bool language = true;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Food App",
          style: TextStyle(
            color: ToolsImage.mainColor,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        shadowColor: Colors.red,
        elevation: 3,
      ),
      body: Directionality(
        textDirection: language ? TextDirection.rtl : TextDirection.ltr,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Icon(
                  Icons.food_bank_rounded,
                  color: ToolsImage.mainColor,
                  size: 200,
                ),
                Column(
                  children: [
                    textForm(
                        icons: Icons.person_outline_outlined,
                        keyboardType: TextInputType.name,
                        label: language ? "اسم المستخدم" : "UserName",
                        control: mycontroller),
                    textForm(
                      icons: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                      label: language ? "البريد الالكتروني" : "Email",
                    ),
                    passwordForm(
                        icons: passwordvisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        keyboardType: TextInputType.visiblePassword,
                        label: language ? "كلمة المرور" : "Password",
                        ononPressedvisible: () {
                          setState(() {
                            passwordvisible = !passwordvisible;
                          });
                        }),
                    RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: ToolsImage.mainColor,
                        child: TextButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.login_outlined,
                            color: ToolsImage.nColor,
                          ),
                          label: Text(
                            language ? "تسجيل الدخول" : "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    SwitchListTile(
                      value: language,
                      onChanged: (val) {
                        setState(() {
                          language = val;
                        });
                      },
                      activeColor: ToolsImage.mainColor,
                      activeTrackColor: ToolsImage.nColor,
                      title: Text(
                        language ? "English Language" : "للغة االعربية",
                        style: TextStyle(color: ToolsImage.mainColor),
                      ),
                      subtitle: Text(
                        language ? "Language Selection" : "تحديد اللغة",
                        style: TextStyle(color: ToolsImage.nColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textForm({
    String label,
    IconData icons,
    TextInputType keyboardType,
    TextEditingController control,
  }) =>
      Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: TextFormField(
          controller: control,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: ToolsImage.mainColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: ToolsImage.mainColor),
            ),
            labelStyle: TextStyle(color: ToolsImage.mainColor, fontSize: 18),
            hintStyle: TextStyle(
              color: ToolsImage.mainColor,
            ),
            prefixIcon: IconButton(
              onPressed: null,
              icon: Icon(
                icons,
                color: ToolsImage.nColor,
              ),
            ),
            labelText: label,
          ),
          cursorHeight: 20,
          cursorColor: ToolsImage.mainColor,
          cursorRadius: Radius.circular(10),
          keyboardType: keyboardType,
        ),
      );
  Widget passwordForm({
    String label,
    IconData icons,
    TextInputType keyboardType,
    Function ononPressedvisible,
  }) =>
      Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: ToolsImage.mainColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: ToolsImage.mainColor),
            ),
            labelStyle: TextStyle(color: ToolsImage.mainColor, fontSize: 18),
            hintStyle: TextStyle(
              color: ToolsImage.mainColor,
            ),
            labelText: label,
            prefixIcon: IconButton(
              icon: Icon(
                icons,
                color: ToolsImage.nColor,
              ),
              onPressed: ononPressedvisible,
            ),
          ),
          cursorHeight: 20,
          cursorColor: ToolsImage.mainColor,
          cursorRadius: Radius.circular(10),
          keyboardType: keyboardType,
          obscureText: passwordvisible,
        ),
      );
}
