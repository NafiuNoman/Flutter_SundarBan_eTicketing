import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        elevation: 0,
        backgroundColor: Colors.green[800],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 350,
            child: Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    // color: Colors.grey,
                    image: DecorationImage(
                      
                      colorFilter: ColorFilter.mode(Color.fromRGBO(78, 135, 84, 0.8),BlendMode.multiply),

                        image: AssetImage('assets/images/main_heading_pic.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Center(
                      child: Text(
                    'CARE NATURE AS IT CARES YOU',
                    textAlign: TextAlign.center,
                    style: bannerTxtStyle,
                  )),
                ),
                Positioned.fill(
                  top: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(30, 60, 9, 0.5),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.blue,
                              width: 1.5,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                              )
                            ],
                            image: const DecorationImage(
                                opacity: 0.5,
                                image: AssetImage(
                                    'assets/images/one_day_btn_pic.jpg'),
                                fit: BoxFit.cover),
                          ),
                          height: 180.0,
                          width: 150.0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              children:
                              [
                              Text('ONE-DAY TOUR',textAlign: TextAlign.start,style: btnTxtTitle,),

                              Text('Sightseeing, & Time-savvy option being close to the nature',textAlign: TextAlign.start,style: btnTxtDes,),


                            ],),
                          ),
                        ),
                        Container(
                          height: 180.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/over_night_btn_pic.jpg'),
                              fit: BoxFit.cover
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                              Text('OVERNIGH TOUR',textAlign: TextAlign.start,style: btnTxtTitle,),
                              Text('Boating, Night safari, Sightseeing, and Staying in Sundarbans',textAlign: TextAlign.start,style:btnTxtDes ,),



                            ],),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(height: 100.0, color: Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(height: 100.0, color: Colors.deepPurple),
          ),
        ],
      ),
    );
  }
}
