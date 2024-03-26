import 'package:flutter/material.dart';
import 'package:vivamaxlogin/core/colors.dart';
import 'package:vivamaxlogin/core/space.dart';
import 'package:vivamaxlogin/core/text_style.dart';
import 'package:vivamaxlogin/data/demo.dart';
import 'package:vivamaxlogin/page/sign_in_page.dart';
import 'package:vivamaxlogin/widget/main_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Container(
            height: height,
            color: blackBG,
            child: Image.asset(
              'assets/image/key.jpg',
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 1,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: '',
                        style: headline,
                      ),
                      TextSpan(
                        text: '',
                        style: headlineDot,
                      ),
                    ]),
                  ),
                  SpaceVH(height: 5.0),
                  // Add your image here
                  Image.asset(
                    'assets/image/vm.png',
                    height: 100, // Adjust height as needed
                    fit: BoxFit.cover,
                  ),
                  SpaceVH(height: 5.0),
                  Text(
                    splashText,
                    textAlign: TextAlign.center,
                    style: headline2,
                  ),
                  Mainbutton(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => LoginPage()));
                    },
                    btnColor: blueButton,
                    text: 'Get Started',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
