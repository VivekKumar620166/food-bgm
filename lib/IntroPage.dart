// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(  IntroPage());
// }
//
// class  IntroPage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//
//       home:  IntroPage(),
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
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView.builder(
//             controller: _pageController,
//             itemCount: _images.length,
//             onPageChanged: (int page) {
//               setState(() {
//                 _currentPage = page;
//               });
//             },
//             itemBuilder: (context, index) {
//               return Image.asset(
//                 _images[index],
//                 fit: BoxFit.cover,
//               );
//             },
//           ),
//           Positioned(
//             bottom: 40.0,
//             left: 0,
//             right: 0,
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
//     return indicators;
//   }
//
//   Widget _indicator(bool isActive) {
//     return Padding(
//       padding: EdgeInsets.all(8.0),
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 300),
//         height: 8.0,
//         width: isActive ? 24.0 : 8.0,
//         decoration: BoxDecoration(
//           color: isActive ? Colors.blue : Colors.grey,
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//     );
//   }
// }
//
//
