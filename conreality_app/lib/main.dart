import 'package:conreality_app/pages/routesPage/@routes_page_container.dart';
import 'package:conreality_app/pages/signUpPage/@sign_up_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home:RoutesPageContainer(),
      routes: {
        "/signUp":(context)=>SignUpContainer(),
      },

      );
  }
}