import 'package:flutter/material.dart';
import 'package:my_sundarban/utils/text_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   final controlar =   TextEditingController();

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Color.fromRGBO(42, 79, 46, 0.87), BlendMode.srcOver),
            image: AssetImage('assets/images/main_heading_pic.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 3,
            ),
            TextFormField(),
            //image
             const Image(
              width: 71,
              height: 83,
              image: AssetImage(
                'assets/images/bfd_logo.png',
              ),
              // image: AssetImage('assets/images/main_heading_pic.jpg'),
            ),
            const Spacer(
              flex: 1,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: 'ECO-TOURISM\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    fontFamily: robotoBold,
                  ),
                  children: [
                    TextSpan(
                      text: 'SUNDARBAN',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ]),
            ),
            const Spacer(
              flex: 8,
            ),
            const Image(
              image: AssetImage('assets/images/gob_logo.gif'),
              height: 32,
              width: 32,
            ),

            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: 'Department of Forest\n',
                  style: TextStyle(
                      color: Color(0xFFA7D4AC),
                      fontSize: 18,
                      fontFamily: robotoReg,
                      fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                      text: 'Government of the People’s Republic of Bangladesh',
                      style: TextStyle(fontSize: 13),
                    ),
                  ]),
            ),
            const Spacer(
              flex: 2,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: 'Designed & Developed by',
                  style: TextStyle(
                    fontFamily: robotoReg,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA7D4AC),
                  ),
                  children: [
                    TextSpan(
                        text: ' TechnoVista Limited',
                        style: TextStyle(
                          color: Colors.white,
                        ))
                  ]),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
