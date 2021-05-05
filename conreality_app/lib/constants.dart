import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const backgroundRoutesPage = Colors.black;
const  String logoRoutesPage = "assets/images/routesPagelogo.png";
const  String wordRoutesPage= "assets/images/routesPageword.png";
Widget bigTextRoutesPage=Text("Play with us.", style: TextStyle(fontWeight: FontWeight.w500, fontSize:ScreenUtil().setSp(38), color: Colors.white,height: ScreenUtil().setHeight(1.4),),);
const signUpRoutesPageColor=Color(0xFF989898);
Widget signUpRoutesPageText=Text("SIGN UP", style: TextStyle(fontWeight: FontWeight.w500,fontSize:ScreenUtil().setSp(14), color: Color(0xFFFFFFFF),height: ScreenUtil().setHeight(1.17)),textAlign: TextAlign.center,);
const logInRoutesPageColor=Color(0xFF000000);
Widget logInRoutesPageText=Text("LOG IN", style: TextStyle(fontWeight: FontWeight.w500,fontSize:ScreenUtil().setSp(14), color: Color(0xFFFFFFFF), height: ScreenUtil().setHeight(1.17)),textAlign: TextAlign.center,);
Widget bottomTextRoutesPage=Text("or scan QR code and \n"" join to game", style: TextStyle(fontWeight: FontWeight.w400, fontSize:ScreenUtil().setSp(16), color: Colors.white,height: ScreenUtil().setHeight(1.4), ),textAlign: TextAlign.center,);
const joinToGameRoutesPageColor=Color(0xFF000000);
Widget joinToGameRoutesPageText=Text("JOIN TO GAME", style: TextStyle(fontWeight: FontWeight.w500,fontSize:ScreenUtil().setSp(14), color: Color(0xFFFFFFFF), height: ScreenUtil().setHeight(1.17)),textAlign: TextAlign.center,);


Widget titleOfAppBarSignUp= Text('Conreality', style: TextStyle(fontWeight: FontWeight.w400, fontSize:ScreenUtil().setSp(20),height: ScreenUtil().setHeight(1.17),),textAlign: TextAlign.center,);
const appBarSignUpColor=Color(0xFF8E8D8D);
const backgroundSignUpPage=Color(0xFF000000);