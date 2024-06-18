// import 'dart:async';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: SplashScreen(), // Start with SplashScreen
//   ));
// }
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
// class OnboardingView extends StatefulWidget {
//   const OnboardingView({Key? key}) : super(key: key);
//
//   @override
//   State<OnboardingView> createState() => _OnboardingViewState();
// }
//
// class _OnboardingViewState extends State<OnboardingView> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;
//
//   final List<String> _images = [
//     "assets/images/Picsart_24-02-02_16-32-07-398.jpg",
//     "assets/images/Picsart_24-02-02_16-34-41-781.jpg",
//     "assets/images/Picsart_24-02-02_16-36-20-455.jpg",
//   ];
//
//   bool _showHi = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController.addListener(() {
//       if (_pageController.page! >= _images.length - 1 && !_showHi) {
//         setState(() {
//           _showHi = true;
//         });
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView.builder(
//             controller: _pageController,
//             itemCount: _showHi ? _images.length + 1 : _images.length,
//             onPageChanged: (int page) {
//               setState(() {
//                 _currentPage = page;
//               });
//             },
//             itemBuilder: (context, index) {
//               if (_showHi && index == _images.length) {
//                 return Stack(
//                   children: [
//                     Positioned(
//                       top: 0,
//                       right: 0,
//                       left: 0,
//                       child: Container(
//                         height: 350,
//                         decoration: BoxDecoration(
//                           color: Colors.black,
//                         ),
//                         child: Container(
//                           color: Colors.black54, // Added color for text background
//                           child: Container(
//                             margin: EdgeInsets.only(bottom: 210, right: 170),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   "Welcome",
//                                   style: TextStyle(color: Colors.white,fontSize: 25),
//                                 ),
//                                 SizedBox(height: 10), // Added space between texts
//                                 Container(
//                                   margin: EdgeInsets.only( left: 20),
//                                   child: Text(
//                                     "Please enter your address or mobile number",
//                                     style: TextStyle(color: Colors.white,fontSize: 7),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               } else {
//                 return Image.asset(
//                   _images[index],
//                   fit: BoxFit.cover,
//                 );
//               }
//             },
//           ),
//           Positioned(
//             left: 0,
//             right: 0,
//             bottom: 40.0,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: _buildPageIndicator(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   List<Widget> _buildPageIndicator() {
//     List<Widget> indicators = [];
//     for (int i = 0; i < _images.length; i++) {
//       indicators.add(_indicator(i == _currentPage));
//     }
//     if (_showHi) {
//       indicators.add(_indicator(false)); // Adding an extra indicator for "Hi"
//     }
//     return indicators;
//   }
//
//   Widget _indicator(bool isActive) {
//     return Padding(
//       padding: EdgeInsets.all(3.0),
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 200),
//         height: 8.0,
//         width: isActive ? 24.0 : 3.0,
//         decoration: BoxDecoration(
//           color: isActive ? Colors.blue : Colors.grey,
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//     );
//   }
// }

