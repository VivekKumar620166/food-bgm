import 'dart:async';
import 'package:flutter/material.dart';
import 'ForgetPasswordPage.dart'; // Importing the ForgetPasswordPage from ForgetPasswordPage.dart

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds then navigate to OnboardingView
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnboardingView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Food-Instagram-Story-12.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool is_checked = false; // Declare is_checked variable
  bool isTextFilled = false; // Variable to track if text field is filled

  final List<String> _images = [
    "assets/images/pexels-tijana-drndarski-3338681 (1).jpg",
    "assets/images/high-protein-meal-with-smartphone-arrangement.jpg",
    "assets/images/pexels-maria-orlova-4940719 (1).jpg",
  ];

  bool _showHi = false;

  // Regex for email validation
  RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  // Regex for mobile number validation
  RegExp mobileRegex = RegExp(r'^[0-9]{10}$');

  // Function to validate password (at least 6 characters long)
  bool validatePassword(String value) {
    return value.length >= 6;
  }

  bool _obscurePassword = true; // Variable to track password visibility

  // Function to toggle password visibility
  void togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_pageController.page! >= _images.length - 1 && !_showHi) {
        setState(() {
          _showHi = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _showHi ? _images.length + 1 : _images.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              if (_showHi && index == _images.length) {
                return Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Container(

                        height: 350,
                        decoration: BoxDecoration(
                          color: Colors.yellow,

                        ),
                        child: Container(
                          color: Colors.black54,
                          padding: EdgeInsets.only(top: 40, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 3),
                                child: Text(
                                  "To Alpha  ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),


                              Container(
                                height: 130,
                                width: 400,
                                child: Image.asset(
                                  'assets/images/kisspng-font-meter-5d3bca5ac17d30.5217208215641995147926.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 260,
                      child: Container(
                        height: 230,
                        width: MediaQuery.of(context).size.width - 40,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 15, top: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom          : 8),
                                    child: Image.asset(
                                      'assets/images/mobilenumber.png',
                                      height: 20,
                                    ),
                                  ),
                                  Container(
                                    child: Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              bottom: 11,
                                            ),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.grey[200],
                                                hintText: 'Email / Mobile Number',
                                                hintStyle: TextStyle(fontSize: 13),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                  borderSide: BorderSide(color: isTextFilled ? Colors.blue : Colors.black), // Change border color based on isTextFilled
                                                ),
                                                contentPadding: EdgeInsets.symmetric(
                                                  vertical: 10,
                                                  horizontal: 10,
                                                ),
                                              ),
                                              minLines: 1,
                                              maxLines: 1,
                                              keyboardType: TextInputType.emailAddress,
                                              onChanged: (value) {
                                                setState(() {
                                                  isTextFilled = value.isNotEmpty; // Update isTextFilled based on text field value
                                                });
                                                if (emailRegex.hasMatch(value) || mobileRegex.hasMatch(value)) {
                                                  // Valid email or mobile number
                                                } else {
                                                  // Invalid email or mobile number
                                                }
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    child: Image.asset(
                                      'assets/images/Password.png',
                                      height: 20,
                                    ),
                                  ),
                                  Container(
                                    child: Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: 26,
                                              right: 20,
                                              bottom: 11,
                                            ),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.grey[200],
                                                hintText: 'Password',
                                                hintStyle: TextStyle(fontSize: 13),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                  borderSide: BorderSide(color: isTextFilled ? Colors.black : Colors.black), // Change border color based on isTextFilled
                                                ),
                                                contentPadding: EdgeInsets.symmetric(
                                                  vertical: 10,
                                                  horizontal: 10,
                                                ),
                                                suffixIcon: GestureDetector(
                                                  onTap: togglePasswordVisibility,
                                                  child: Icon(
                                                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ),
                                              minLines: 1,
                                              maxLines: 1,
                                              obscureText: _obscurePassword,
                                              onChanged: (value) {
                                                if (validatePassword(value)) {
                                                  // Valid password
                                                } else {
                                                  // Invalid password
                                                }
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Checkbox(
                                      value: is_checked,
                                      onChanged: (val) {
                                        setState(() {
                                          is_checked = val!;
                                        });
                                      },
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      print("remember password ");
                                    },
                                    child: Container(
                                      child: Text(
                                        "Remember Me",
                                        style: TextStyle(fontSize: 11, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Navigate to ForgetPasswordPage when "Forgot Password?" is tapped

                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 15),
                                      child: Text(
                                        "Forgot Password?",
                                        style: TextStyle(fontSize: 11, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    print("login ");
                                    // Handle login button tap
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                      color: Colors.green,
                                    ),
                                    height: 35,
                                    width: 180,
                                    child: Center(
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height - 200,
                      right: 0,
                      left: 0,
                      child: Column(
                        children: [
                          Container(

                            child: Text(
                              "Login With",
                              style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Container(
                              margin: EdgeInsets.only(top: 10,left: 3),
                              child: InkWell(
                                onTap: (){
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (_) => ForgetPasswordPage()),
                                  );
                                }
                               , child: Text(

                                  "Mobile No.",
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Container(

                                  child: Row(
                                    children: [
                                      Icon(Icons.facebook, color: Colors.black),
                                      SizedBox(width: 8),
                                      Text(
                                        "Facebook",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height - 100,
                      right: 0,
                      left: 0,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  print("Don't have an account signup ");
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 38,top: 20),
                                  child: Text(
                                    "Don't have an account signup?",
                                    style: TextStyle(fontSize: 13, color: Colors.black),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  print("sign up ");
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 1,top: 22),
                                  child: Text(
                                    "Sign up",
                                    style: TextStyle(fontSize: 13, color: Colors.green),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return Image.asset(
                  _images[index],
                  fit: BoxFit.cover,
                );
              }
            },
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _images.length; i++) {
      indicators.add(_indicator(i == _currentPage));
    }
    if (_showHi) {
      indicators.add(_indicator(false)); // Adding an extra indicator for "Hi"
    }
    return indicators;
  }

  Widget _indicator(bool isActive) {
    return Padding(
      padding: EdgeInsets.all(3.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 8.0,
        width: isActive ? 24.0 : 3.0,
        decoration: BoxDecoration(
          color: isActive ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(), // Start with SplashScreen
  ));
}
