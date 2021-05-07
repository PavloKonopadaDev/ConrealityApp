// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter/material.dart';



// _launchMaps() async {
//   String googleUrl =
//     'comgooglemaps://?center=${trip.origLocationObj.lat},${trip.origLocationObj.lon}';
//   String appleUrl =
//     'https://maps.apple.com/?sll=${trip.origLocationObj.lat},${trip.origLocationObj.lon}';
//   if (await canLaunch("comgooglemaps://")) {
//     print('launching com googleUrl');
//     await launch(googleUrl);
//   } else if (await canLaunch(appleUrl)) {
//     print('launching apple url');
//     await launch(appleUrl);
//   } else {
//     throw 'Could not launch url';
//   }
// }