import 'package:firstapp/common.dart';
import 'package:firstapp/string_value.dart';
import 'package:flutter/material.dart';

class OtpConfirm extends StatefulWidget {
  const OtpConfirm({Key? key}) : super(key: key);

  @override
  State<OtpConfirm> createState() => _OtpConfirmState();
}

class _OtpConfirmState extends State<OtpConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 65,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/mailbox.png')),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 8),
                    alignment: Alignment.topCenter,
                    height: 10,
                    width: 10,
                    child: Image(image: AssetImage('images/mark.png')),
                  ),
                ),
                SizedBox(
                  height: 65,
                ),
                CommonText().textviewWidget(
                    name: StringValue().verifyOtp,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  width: double.infinity,
                  child: CommonText().textviewWidget(
                      name: StringValue().otpAddressDes,
                      color: Colors.grey,
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _textFieldOTP(first: true, last: false, context: context),
                    _textFieldOTP(first: false, last: false, context: context),
                    _textFieldOTP(first: false, last: false, context: context),
                    _textFieldOTP(first: false, last: true, context: context),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                    inputText: StringValue().confirm, inputRoute: '/profile1'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        Icons.refresh,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: CommonText().textviewWidget(
                            name: StringValue().resendOtp,
                            color: Colors.grey,
                            fontSize: 22),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                CommonText().textviewWidget(
                    name: StringValue().otpNotReceive,
                    fontSize: 14,
                    color: Colors.grey,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: CommonText().textviewWidget(
                      name: StringValue().tryAnotherNum,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _textFieldOTP({required bool first, last, context}) {
  return Container(
    width: 75,
    height: 48,
    alignment: Alignment.center,
    child: TextField(
      autofocus: true,
      onChanged: (value) {
        if (value.length == 1 && last == false) {
          FocusScope.of(context).nextFocus();
        }
        if (value.length == 0 && first == false) {
          FocusScope.of(context).previousFocus();
        }
      },
      showCursor: false,
      readOnly: false,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      keyboardType: TextInputType.number,
      maxLength: 1,
      decoration: InputDecoration(
        counterText: '',
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.indigo.shade900),
            borderRadius: BorderRadius.circular(8)),
      ),
    ),
  );
}
