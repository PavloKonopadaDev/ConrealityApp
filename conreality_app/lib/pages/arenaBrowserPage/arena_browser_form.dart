import 'package:conreality_app/pages/arenaBrowserPage/tabBarPages/tabBarAll/tab_bar_all.dart';
import 'package:conreality_app/pages/arenaBrowserPage/tabBarPages/tabBarFavourite/tab_bar_favourite.dart';
import 'package:conreality_app/pages/arenaBrowserPage/tabBarPages/tabBarMyArena/tab_bar_my_arena.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:conreality_app/constants.dart';
class ArenaBrowserForm extends StatefulWidget {
  @override
  _ArenaBrowserFormState createState() => _ArenaBrowserFormState();
}

class _ArenaBrowserFormState extends State<ArenaBrowserForm> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
          child: Scaffold(
      backgroundColor:backgroundArenaBrowserPage,
      appBar:_buildAppBar(),
      
       
      body:TabBarView(
        children: [
TabBarAll(),
TabBarFavourite(),
TabBarMyArena(),
        ],
      ) ,      
      ),
    );
  }



Widget _buildAppBar(){
  return AppBar(
title: titleOfAppBarArenaBrowserPage,
centerTitle: true,
backgroundColor: appBarArenaBrowserPageColor ,
leading: GestureDetector(onTap: (){},
child:Container(
width: ScreenUtil().setWidth(0),
height: ScreenUtil().setHeight(14.31),
  child: Icon(Icons.add_outlined, color: Colors.white,)) ),
  actions: [
    Container(
width: ScreenUtil().setWidth(24),
height: ScreenUtil().setHeight(24),
child: GestureDetector(onTap: (){},child: Icon(Icons.qr_code_scanner_outlined),),
    ),
    SizedBox(width: ScreenUtil().setWidth(23),),
    Container(
width: ScreenUtil().setWidth(17.49),
height: ScreenUtil().setHeight(17.49),
child: GestureDetector(onTap: (){},child: Icon(Icons.search),),
    ),
    SizedBox(width: ScreenUtil().setWidth(18.51),),
  ],
  bottom: TabBar(
            labelColor: Colors.green,
            unselectedLabelColor: Colors.green,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 3.0, color: Color(0xff323c46)),
              insets: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            isScrollable: false,
            tabs: [
              Tab(
                child: Text(
                  'All',
                  style: TextStyle(
                    // fontFamily: "TitilliumWeb",
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(14),
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Favorires',
                  style: TextStyle(
                    // fontFamily: "TitilliumWeb",
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(14),
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'MyArena',
                  style: TextStyle(
                    // fontFamily: "TitilliumWeb",
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(14),
                  ),
                ),
              ),
            ],
          ),
  );
  
}

}