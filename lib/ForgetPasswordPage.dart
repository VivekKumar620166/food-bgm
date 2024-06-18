import 'package:flutter/material.dart';
import 'SendOtpPage.dart'; // Importing the SendOtpPage from SendOtpPage.dart

class ForgetPasswordPage extends StatefulWidget {
  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 350,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Container(
                color: Colors.black54,
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mobile Number",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      child: Text(
                        "Please enter your mobile number   ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      child: Text(
                        "receive OTP  ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      height: 160,
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
            top: 290,
            child: Container(
              height: 200,
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
                margin: EdgeInsets.only(left: 15, top: 45),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 30, // Adjust height as needed
                          width: 30, // Adjust width as needed
                          color: Colors.grey[200], // Set container color to grey
                          child: Image.asset(
                            'assets/images/mobilenumber.png',
                            height: 20,
                          ),
                        ),
                        SizedBox(width: 10), // Add spacing between the image and text field
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  right: 20,
                                  bottom: 11,
                                ),
                                child:
                                TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    hintText: 'Email/Phone Number',
                                    hintStyle: TextStyle(fontSize: 13),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10),
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
                                    // Handle onChanged
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: InkWell(
                        child: Container(
                          margin: EdgeInsets.only(top: 20, left: 7),
                          child: GestureDetector(
                            onTap: () {
                              // Navigate to SendOtpPage when "Sent OTP" is tapped
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => SendOtpPage()),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                color: Colors.green,
                              ),
                              height: 39,
                              width: 180,
                              child: Center(
                                child: Text(
                                  'Sent OTP',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
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
        ],
      ),
    );
  }
}
