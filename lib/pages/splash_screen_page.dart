import 'package:flutter/material.dart';
import '';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            SizedBox(
              height: 100,
            ),
            //image
            Image(
              width: 71,
              height: 83,
              image: AssetImage('assets/images/bfd_logo.jpg'),
              // image: AssetImage('assets/images/main_heading_pic.jpg'),
            ),
            Text('ECO-TOURISM'),
            Text('SUNDARBAN'),

            Text('Department of Forest'),
            Text('Government of the People’s Republic of Bangladesh'),
            Row(
              children: [
                Text('Designed & Developed by TechnoVista Limited'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
