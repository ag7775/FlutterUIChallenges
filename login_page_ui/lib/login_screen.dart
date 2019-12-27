import 'package:flutter/material.dart';
import 'package:login_page_ui/signup_screen.dart';

import 'color_constant.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          CustomPaint(
            painter: MyCustomPainter(),
            child: Container(
              height: size.height * .4,
            ),
          ),
          Positioned(
            left: 20.0,
            top: MediaQuery.of(context).size.height / 4 - 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "WELCOME",
                  style: kTextStyle,
                ),
                Text("BACK", style: kTextStyle),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ),
          Positioned(
            top: size.height / 2 - 20,
            left: 40.0,
            right: 20.0,
            child: Container(
              width: size.width,
              child: Column(
                children: <Widget>[
                  TextField(
                    style: kTextFieldStyle.copyWith(color: darkblue),
                    decoration: kInputDec.copyWith(
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: darkblue,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: darkblue),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: darkblue),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    obscureText: true,
                    style: kTextFieldStyle.copyWith(color: darkblue),
                    decoration: kInputDec.copyWith(
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: darkblue,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: darkblue),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: darkblue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 65.0,
            right: 40.0,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: darkblue,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 40.0,
              ),
            ),
          ),
          Positioned(
            bottom: 90.0,
            left: 30.0,
            child: Text(
              "SignIn",
              style: TextStyle(
                color: darkblue,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
          Positioned(
            bottom: 20.0,
            right: 30.0,
            child: Text(
              "Forget Password",
              style: TextStyle(
                color: darkblue,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 30.0,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path backgroundPath = Path();

    final width = size.width;
    final height = size.height;

    backgroundPath.moveTo(size.width, 0.0);
    backgroundPath.lineTo(size.width, size.height * .85);
    backgroundPath.quadraticBezierTo(
        width * .45, height * .85, size.width * .25, 0.0);
    backgroundPath.close();
    paint.color = lightblue;
    canvas.drawPath(backgroundPath, paint);

    Path secondPath = Path();
    secondPath.lineTo(width, 0.0);
    secondPath.lineTo(width, height * .20);
    secondPath.quadraticBezierTo(
        width * .95, height * .27, width * .80, height * .37);
    secondPath.quadraticBezierTo(
        width * .60, height * .5, width * .57, height * .85);
    secondPath.quadraticBezierTo(width * .55, height * 1.3, 0.0, height * .85);
    secondPath.close();
    paint.color = darkblue;
    canvas.drawPath(secondPath, paint);

    Path thirdPath = Path();
    thirdPath.lineTo(0.0, height * .40);
    thirdPath.quadraticBezierTo(40, 110, 80, 60);
    thirdPath.quadraticBezierTo(width * .30, 10, width * .58, 20);
    thirdPath.quadraticBezierTo(width * .65, 20, width * .70, 0.0);
    thirdPath.close();
    paint.color = orange;
    canvas.drawPath(thirdPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate != this;
  }
}
