import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight / 3),
                child: Center(
                  child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                icon: SvgPicture.asset(
                  'assets/googleLogo.svg',
                  height: 18.0,
                ),
                label: const Text(
                  'Sign in with Google',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              //put it at the end of the page
              TextButton(
                onPressed: () {},
                child: const Text('Don\'t have an account?'),
              ),
            ],
          ),
        ));
  }
}
