import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
      child: Column(
       
        children: [


      SizedBox(height: ScreenUtil().setHeight(24),),
          Row(children: [
            SizedBox( width: ScreenUtil().setWidth(16),),
              _buildSortBttn(),
               SizedBox(width: ScreenUtil().setWidth(15), ),
              _buildFilterBttn(),
        ],
      ),




      ]
    ));
  }

  Widget _buildCard() {
    return Card(
      child: Column(
        children: [
          SizedBox(height: ScreenUtil().setWidth(10)),
          Row(
            children: [
              Container(
                height: ScreenUtil().setHeight(55),
                width: ScreenUtil().setWidth(75),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 300,
                  backgroundImage: AssetImage("assets/images/qrCode.png"),
                ),
              ),
              Column(
                children: [
                  Text(
                    "Ami Koehler",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff3c4f5e),
                      fontSize: ScreenUtil().setSp(15),
                    ),
                  ),
                  Text(
                    "@dropperidiot",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xffe17072),
                      fontSize: ScreenUtil().setSp(10),
                    ),
                  ),
                ],
              ),
              SizedBox(width: ScreenUtil().setWidth(90)),
              Column(
                children: [
                  Text(
                    "3 minutes ago",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4e606e),
                      fontSize: ScreenUtil().setSp(10),
                    ),
                  ),
                  Text(
                    "in Los Angeles",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xffe26571),
                      fontSize: ScreenUtil().setSp(8),
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: new Icon(Icons.location_on),
                color: Color(0xff4e606e),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: ScreenUtil().setWidth(7)),
          Container(
            width: double.infinity,
            height: ScreenUtil().setHeight(440),
            child: Image.asset("assets/images/qrCode.png"),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                height: ScreenUtil().setHeight(75),
                width: ScreenUtil().setWidth(200),
                child: Text(
                  "The park is a favourite among skaters in California and it definitely deserves it. The park is complete rith plenty of smooth banks to",
                  style: TextStyle(
                    height: 1.54,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4d606f),
                    fontSize: ScreenUtil().setSp(22),
                  ),
                ),
              ),
              IconButton(
                icon: new Icon(Icons.arrow_forward),
                color: Colors.grey,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildSortBttn(){
    return InkWell(
      onTap: (){},
          child: Container(

                  height: ScreenUtil().setHeight(36),
                  width: ScreenUtil().setWidth(82),
                  decoration:BoxDecoration(
                  border: Border.all(
                  color: Color(0xFF989898), 
                  width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(
                  Radius.circular(3.0) 
                  ),),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top:4 , bottom:4, right: 10 ),
                    child: Container(
                       height: ScreenUtil().setHeight(24),
                  width: ScreenUtil().setWidth(63),
                      color: Colors.black,
                      child:Row(children: [
                        Container(
                          
                  height: ScreenUtil().setHeight(24),
                  width: ScreenUtil().setWidth(24),
                  child: Row(children: [
                  Container( 
                    alignment: Alignment.center,    
                  height: ScreenUtil().setHeight(20.7),
                  width: ScreenUtil().setWidth(7.71),
                  child: Icon(
                   
          
                    Icons.south, color: Colors.white,
                    size: 17,),
                  ),
                   SizedBox(width: ScreenUtil().setWidth(3), ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 6),
                     child: Container(     
                  height: ScreenUtil().setHeight(14.7),
                  width: ScreenUtil().setWidth(7.71),
                     child: Icon(
                     
          
                      Icons.north, color: Colors.white,
                      size: 17,),
                  
                  ),
                   ),
                  ],),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(5),),
                        Container(
                         child: Text("SORT",style: TextStyle(color:Color(0xFFFFFFFF),fontSize:ScreenUtil().setSp(12),fontWeight: FontWeight.w500,height: ScreenUtil().setHeight(1.16),),textAlign: TextAlign.center,),
                  height: ScreenUtil().setHeight(14),
                  width: ScreenUtil().setWidth(34),
                        ),
                      ],) ,
                    ),
                  ),


                 ),
    );
  }

Widget _buildFilterBttn(){
  return InkWell(
      onTap: (){},
          child: Container(

                  height: ScreenUtil().setHeight(36),
                  width: ScreenUtil().setWidth(90),
                  decoration:BoxDecoration(
                  border: Border.all(
                  color: Color(0xFF989898), 
                  width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(
                  Radius.circular(3.0) 
                  ),),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top:4 , bottom:4, right: 10 ),
                    child: Container(
                       height: ScreenUtil().setHeight(24),
                  width: ScreenUtil().setWidth(71),
                      color: Colors.black,
                      child:Row(children: [
                        Container(
                          
                  height: ScreenUtil().setHeight(24),
                  width: ScreenUtil().setWidth(24),
                  child: Icon(Icons.filter_alt, color:Colors.white,size: 17,),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(5),),
                        Container(

                         child: Text("FILTER",style: TextStyle(color:Color(0xFFFFFFFF),fontSize:ScreenUtil().setSp(12),fontWeight: FontWeight.w500,height: ScreenUtil().setHeight(1.16),),textAlign: TextAlign.center,),
                  height: ScreenUtil().setHeight(14),
                  width: ScreenUtil().setWidth(42),
                        ),
                      ],) ,
                    ),
                  ),


                 ),
    );
}

}

