import 'package:conreality_app/constants.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class QrCodePageForm extends StatefulWidget {
  QrCodePageForm({Key key}) : super(key: key);

  @override
  _QrCodePageFormState createState() => _QrCodePageFormState();
}

class _QrCodePageFormState extends State<QrCodePageForm> {
  String barcode = "";

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundQrCodeForm,
        appBar: _buildAppbar(),
        body: Center(
          child: Column(
            
            children: [
               SizedBox( height: ScreenUtil().setHeight(192),),
              _buildQrCodeResults(),
               SizedBox( height: ScreenUtil().setHeight(158),),

            _buildScanButton(),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              //   child: Text(
              //     barcode,
              //     textAlign: TextAlign.center,
              //   ),
              // ),
            ],
          ),
        ));
}
Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
  Widget _buildAppbar(){
    return AppBar(
      
        title:titleOfAppBarQrCodeForm,
        centerTitle: true,
        toolbarHeight: ScreenUtil().setHeight(80),
        backgroundColor: appBarQrCodeFormColor ,

    );
  }
  Widget _buildQrCodeResults(){
    return Container(
      width: ScreenUtil().setWidth(260),
      height: ScreenUtil().setHeight(260),
      child: Image.asset("assets/images/qrCode.png"),
    );
  }
  Widget _buildScanButton(){
    return Padding(
          padding: const EdgeInsets.only(left:32, right: 32 ),
          child: Container(
          
          width: ScreenUtil().setWidth(311),
          height: ScreenUtil().setHeight(48),
          child: RaisedButton( 
            onPressed: scan,
          
          color: scanColorButtonQrCodeForm,child:scanTextButtonQrCodeForm,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)) ,)
          ),
          );
  }
}