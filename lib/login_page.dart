import 'package:firstapp/common.dart';
import 'package:firstapp/string_value.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(5),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 85,
                ),
                Container(
                  height: 50,
                  width: 100,
                  child: Image(
                    image: AssetImage("images/Logo.png"),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                    child: CommonText().textviewWidget(
                        name: StringValue().bitCoding,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey)),
                SizedBox(
                  height: 42,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: CommonText().textviewWidget(
                          name: StringValue().welcomeBack,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: CommonText().textviewWidget(
                          name:StringValue().loginDes,
                          textAlign: TextAlign.center,
                          color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                 ForMobileNumWithTitleContainer(inputText: StringValue().enterMobileNum, inputHintText: StringValue().hintMobileNum,),
                SizedBox(
                  height: 22,
                ),
                CustomButton(inputText: StringValue().signIn, inputRoute: '/otp'),
                Container(
                  margin: EdgeInsets.all(38),
                  height: 15,
                  child: CommonText().textviewWidget(
                      name: StringValue().socialAccountLoginDes,
                      color: Colors.grey,
                      textAlign: TextAlign.center),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/facebook.png'),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/google.png'),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/apple.png'),
                      ),
                    )
                  ],
                ),
                CommonSizedBox().sizeboxWidget(height: 15),
                Container(
                  margin: EdgeInsets.all(25),
                  height: 22,
                  child: CommonText().textviewWidget(
                      name: StringValue().continueWithoutLogin,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      textAlign: TextAlign.center),
                ),
                Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 2),
                          height: 20,
                          child: CommonText().textviewWidget(
                              name: StringValue().notLoginAccount),
                        ),
                        Container(
                          height: 20,
                          child: CommonText().textviewWidget(
                              name: StringValue().signUp,
                              color: Colors.indigo.shade900,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
