import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_page_ui/color_constant.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.white,
            ),
            CustomPaint(
              painter: SignUpCustomPainter(),
              child: Container(),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
            Positioned(
              left: 20.0,
              top: MediaQuery.of(context).size.height / 4 - 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "CREATE",
                    style: kTextStyle,
                  ),
                  Text("ACCOUNT", style: kTextStyle),
                ],
              ),
            ),
            Positioned(
              top: size.height / 2 - 60,
              left: 40.0,
              right: 20.0,
              child: Container(
                width: size.width,
                child: InputField(),
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
                "SignUp",
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
                  Navigator.pop(context);
                },
                child: Text(
                  "Sign In",
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
      ),
    );
  }
}

class SignUpCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var width = size.width;
    var height = size.height;
    Paint paint = new Paint();

    Path firstPath = new Path();
    firstPath.lineTo(width, 0.0);
    firstPath.lineTo(width, height * .75);
    firstPath.quadraticBezierTo(
        width - 20, (height * .75) + 40, width - 90, (height * .75) + 65);
    firstPath.quadraticBezierTo(width * .50, height - 60, width * .40, height);
    firstPath.lineTo(0.0, height);
    firstPath.close();
    paint.color = lightblue;
    canvas.drawPath(firstPath, paint);

    Path secondPath = new Path();
    secondPath.lineTo(0.0, height / 2);
    secondPath.quadraticBezierTo(
        50, (height * .50) - 50, (width / 2) - 30, (height * .5) - 60);
    secondPath.quadraticBezierTo(
        width * .80, (height * .41), width, height * .20);
    secondPath.lineTo(width, 0.0);
    secondPath.close();
    paint.color = darkblue;
    canvas.drawPath(secondPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate != this;
  }
}

class InputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
            style: kTextFieldStyle,
            showCursor: false,
            cursorColor: Colors.white,
            decoration: kInputDec),
        SizedBox(
          height: 20.0,
        ),
        TextField(
          style: kTextFieldStyle,
          showCursor: false,
          cursorColor: Colors.white,
          decoration: kInputDec.copyWith(hintText: "Email"),
        ),
        SizedBox(
          height: 20.0,
        ),
        TextField(
          style: kTextFieldStyle,
          obscureText: true,
          showCursor: false,
          cursorColor: Colors.white,
          decoration: kInputDec.copyWith(hintText: "Password"),
        ),
      ],
    );
  }
}
