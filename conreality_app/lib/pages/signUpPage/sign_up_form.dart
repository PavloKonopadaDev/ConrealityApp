import 'package:conreality_app/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final FocusNode _emailAdresFocus = FocusNode();
  final FocusNode _passwordInpuFocus = FocusNode();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  void validate() {
    if (_formkey.currentState.validate()) {
      print("Validated");
    } else {
      print("Not validated");
    }
  }

  String validatepassword(value) {
    if (value.isEmpty) {
      return "Requiered";
    } else if (value.length < 6) {
      return "Should Be At Least 6 characters";
    } else if (value.length > 15) {
      return "Should Not Be More Than 15 Characters";
    } else if (value != "letmeIn123!") {
      return "False Password";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).requestFocus(
          new FocusNode(),
        );
      },
      child: Form(autovalidateMode: AutovalidateMode.always,
        key: _formkey,
        child: Scaffold(
         appBar: _buildAppBar(),
          backgroundColor: backgroundSignUpPage,
          body: LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return Container(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                   children: [
                     SizedBox(
                   height: ScreenUtil().setHeight(254.08),
                    ),
                    _buildLabelTextEmail(),
        SizedBox(
          height: ScreenUtil().setHeight(7), 
        ),
    _buildEmail(),
                   ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
    
    
  }


 
Widget _buildAppBar(){
    return AppBar(
    title:titleOfAppBarSignUp,
    centerTitle: true,
    toolbarHeight: ScreenUtil().setHeight(80),
    backgroundColor: appBarSignUpColor ,
  );
  }

Widget _buildLabelTextEmail(){
  return Padding(
  padding: const EdgeInsets.only(left:32, right: 31 ),
  child: Container(
  width: ScreenUtil().setWidth(312),
  height: ScreenUtil().setHeight(15),
  child:Text("E-mail", style: TextStyle( fontSize:ScreenUtil().setSp(13),height: ScreenUtil().setHeight(1.17), color: Color(0xFFB6B5B5), fontWeight: FontWeight.w400),) ,
  ),);
} 
Widget _buildEmail() {
    return Container(
      height: ScreenUtil().setHeight(48),
      width: ScreenUtil().setWidth(312),
      decoration: BoxDecoration(
        color: Color(0xFF4B4646),
        borderRadius: BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      child: TextFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          focusNode: _emailAdresFocus,
          onFieldSubmitted: (term) {
            _fieldFocusChange(context, _emailAdresFocus, _passwordInpuFocus);
          },
          decoration: InputDecoration(
            
            errorStyle: TextStyle(fontSize: ScreenUtil().setSp(13), height: -0.01),
            
            // hintText: "E-mail",
            // hintStyle: TextStyle(
            //   fontWeight: FontWeight.w600,
            //   color: Color(0xff4d606f),
            //   fontSize: ScreenUtil().setSp(16),
            // ),
          ),
          validator: (value) {
            if (value != "jhacker@example.org") {
              return "False Email";
            } else {
              return null;
            }
          }),
    );
  }

  // Widget
  // Widget
  // Widget
  // Widget
 
_fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
  }









}