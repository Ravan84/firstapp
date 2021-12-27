import 'package:firstapp/firstdis.dart';
import 'package:firstapp/login_page.dart';
import 'package:firstapp/otp_confirm.dart';
import 'package:firstapp/postpage.dart';
import 'package:firstapp/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',

      routes: {
        '/':(context)=> FirstDis(),
        '/login':(context)=> LoginPage(),
        '/otp':(context)=> OtpConfirm(),
        '/profile1':(context)=> Profile(),
        '/profile2':(context)=> Profile2(),
        '/profile3':(context)=> Profile3(),
        '/tiles':(context)=> Tiles(),
        '/sanitary':(context)=> Sanitary(),
        '/bathware':(context)=> Bathware(),
        '/other':(context)=> OtherProduct(),
      },
      title: 'My App',
    ),
  );
}


