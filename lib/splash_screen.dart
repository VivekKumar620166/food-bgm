// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:food_bgm/views/onboarding_screen.dart';
// import 'main.dart';
// import 'onboarding_screen.dart'; // Import OnboardingView from the onboarding screen file
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Delay for 3 seconds then navigate to OnboardingView
//     Timer(Duration(seconds: 3), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (_) => OnboardingView()),
//       );
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets/images/mainimage.png'),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }
//
// child: Container(
// height: 50,
// margin: EdgeInsets.only( right:35,bottom: 130),
// child: TextFormField(
// decoration: InputDecoration(
// //<-- SEE HERE
// hintText: 'Email / Mobile Number',
// border: InputBorder.none,
// enabledBorder: OutlineInputBorder(
//
// borderRadius: BorderRadius.all(Radius.circular(8))
//
// )
// ),
//
// ),
// ),