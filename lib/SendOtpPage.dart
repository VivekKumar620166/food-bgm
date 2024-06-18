import 'package:flutter/material.dart';
import 'package:food_bgm/ForgetPasswordPage.dart';
import 'package:pinput/pinput.dart';


class SendOtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final defultPinTheme =PinTheme(
      width: 55,
      height: 50,
      textStyle: TextStyle(
        fontSize: 22,
        color: Colors.black

      ),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      )
    );
    return Scaffold(
      appBar: AppBar(
        // title: Text('OTP Verification',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
        leading: IconButton(

          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop(ForgetPasswordPage());
          },
        ),
      ),
      body:
      Stack(
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
                    'OTP Verification',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      child: Text(
                        "Please enter OTP recieved on your mobile number to   ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      child: Text(
                        "continue. ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
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
                margin: EdgeInsets.only( top: 45),
                child: Column(
                  children: [
                    Row(

                      children: [

                        // SizedBox(width: 10), // Add spacing between the image and text field
                        Expanded(
                          child: Column(
                            children: [
                     Container(

                       child: Pinput(
                         length: 4,
                         defaultPinTheme: defultPinTheme,
                         focusedPinTheme: defultPinTheme.copyWith(
                           decoration: defultPinTheme.decoration!.copyWith(
                             border: Border.all(color: Colors.green),

                           )
                         ),
                         onCompleted: (pin) => debugPrint(pin),
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
                          margin: EdgeInsets.only(top: 35, left: 7),
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
                                  'Verify',
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
