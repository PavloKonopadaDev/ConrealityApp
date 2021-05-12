import 'package:conreality_app/pages/arenaBrowserPage/@arena_browser_container.dart';
import 'package:conreality_app/pages/createArena/@create_arena_container.dart';
import 'package:conreality_app/pages/createArena/google_maps_page.dart';
import 'package:conreality_app/pages/qrCodePage/@qr_code_page_container.dart';
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
        "/qrCodeScan":(context)=>QrCodePageContainer(),
        "/arenaBrowser":(context)=>ArenaBrowserContainer(),
         "/createArenaContainer":(context)=> CreateArenaContainer(),
        "/GoogleMapScreen" :(context)=> GoogleMapScreen(),
      },

      );
  }
}
