import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import '../../constants.dart';

class CreateArenaForm extends StatefulWidget {
  CreateArenaForm({Key key}) : super(key: key);

  @override
  _CreateArenaFormState createState() => _CreateArenaFormState();
}

class _CreateArenaFormState extends State<CreateArenaForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B2B2B),
      
      body: Column(
        children: [
          Container(
            width: ScreenUtil().setWidth(375),
            height: ScreenUtil().setHeight(32),
            color: Colors.grey,
          ),
          Container(
            width: ScreenUtil().setWidth(375),
            height: ScreenUtil().setHeight(55.15),
            color: Color(0xFF2B2B2B),
            child: Row(
              children: [
                SizedBox(
                  width: ScreenUtil().setWidth(21),
                ),
                Container(
                    width: ScreenUtil().setWidth(14),
                    height: ScreenUtil().setHeight(14),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: ScreenUtil().setWidth(225.2),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: ScreenUtil().setWidth(97),
                    height: ScreenUtil().setHeight(36),
                    decoration:BoxDecoration(
                                         color: Color(0xFF989898), 

                  
                  borderRadius: BorderRadius.all(
                  Radius.circular(3.0) 
                  ),),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 7, top: 6, bottom: 6, right: 12),
                      child: Container(
                        width: ScreenUtil().setWidth(78),
                        height: ScreenUtil().setHeight(24),
                        child: Row(children: [
                          Container(
                              width: ScreenUtil().setWidth(24),
                              height: ScreenUtil().setHeight(24),
                              child: Icon(Icons.add, color: Colors.white,),
                              ),
                          SizedBox(
                            width: ScreenUtil().setWidth(5),
                          ),
                          Container(
                            width: ScreenUtil().setWidth(49),
                            height: ScreenUtil().setHeight(14),
                            child: Text(
                              "CREATE",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
