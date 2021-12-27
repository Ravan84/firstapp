import 'package:firstapp/common.dart';
import 'package:firstapp/string_value.dart';
import 'package:flutter/material.dart';

class FirstDis extends StatelessWidget {
  const FirstDis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image(
                  image: AssetImage("images/Logo.png"),
                ),
              ),
              Container(
                child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: CommonText().textviewWidget(
                        name: StringValue().bitCoding,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
