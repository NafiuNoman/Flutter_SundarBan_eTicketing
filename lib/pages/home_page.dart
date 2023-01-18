import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //take the space of of app bar by the lower widget
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        leading: const Icon(Icons.menu_rounded,size: 39,),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 390,
            child: Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration:  const BoxDecoration(
                    // color: Colors.grey,
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            // pColor.withOpacity(0.8),
                            Color.fromRGBO(78, 135, 84, 0.8),
                            BlendMode.srcOver),
                        image: AssetImage('assets/images/main_heading_pic.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: const Center(
                      child: Text(
                    'CARE NATURE AS IT CARES YOU',
                    textAlign: TextAlign.center,
                    style: bannerTxtStyle,
                  )),
                ),
                Positioned.fill(
                  top: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(30, 60, 9, 0.5),
                            borderRadius: BorderRadius.circular(5),
                            // border: Border.all(
                            //   color: Colors.blue,
                            //   width: 1.5,
                            // ),
                            boxShadow: [
                              BoxShadow(
                                //shadow direction
                                offset: const Offset(0, 4),
                                blurRadius: 4,
                                spreadRadius: 0,
                                color: Colors.black.withOpacity(0.25),
                              )
                            ],
                            image: const DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Color.fromRGBO(3, 60, 9, 0.5),
                                    BlendMode.srcOver),
                                // opacity: 0.5,
                                image: AssetImage(
                                    'assets/images/one_day_btn_pic.jpg'),
                                fit: BoxFit.cover),
                          ),
                          height: 190.0,
                          width: 155.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'ONE-DAY TOUR',
                                  textAlign: TextAlign.start,
                                  style: btnTxtTitle,
                                ),
                                Text(
                                  'Sightseeing, & Time-savvy option being close to the nature',
                                  textAlign: TextAlign.start,
                                  style: btnTxtDes,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 190.0,
                          width: 155.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/over_night_btn_pic.jpg'),
                                  fit: BoxFit.cover),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 4),
                                  blurRadius: 4,
                                  spreadRadius: 0,
                                  color: Colors.black.withOpacity(0.25),
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'OVERNIGHT TOUR',
                                  textAlign: TextAlign.start,
                                  style: btnTxtTitle,
                                ),
                                Text(
                                  'Boating, Night safari, Sightseeing, and Staying in Sundarbans',
                                  textAlign: TextAlign.start,
                                  style: btnTxtDes,
                                ),
                              ],
                            ),
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
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: pColor,
                // color: Colors.transparent,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: 0,
                    blurRadius: 9,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
              child: Center(
                child: ListTile(
                  title: const Text(
                    'MY TICKETS',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: robotoBold,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: const Text(
                    'Get Your One-Day Tour Ticket',
                    style: TextStyle(
                        color: Color.fromRGBO(167, 212, 172, 1),
                        fontFamily: robotoReg,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  // trailing: SvgPicture.asset('assets/images/ticket.svg',color: Colors.purpleAccent,width: 20,height: 20,),
                  trailing: Transform.rotate(
                      angle: 100,
                      child: const Icon(
                        Icons.airplane_ticket,
                        size: 48,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: const Color.fromRGBO(3, 60, 9, 0.5),
                ),
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: 0,
                    blurRadius: 9,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
                color: const Color.fromRGBO(167, 212, 172, 0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: ListTile(
                  leading: Icon(
                    Icons.person_pin,
                    size: 60,
                    color: pColor,
                  ),
                  title: Text(
                    'My Profile',
                    style: TextStyle(
                      color: pColor,
                      fontFamily: robotoBold,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Tap to See your Profile',
                    style: TextStyle(
                      color: pColor,
                      fontFamily: robotoReg,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Icon(
                    Icons.navigate_next_outlined,
                    size: 40,
                    color: Color.fromRGBO(153, 153, 153, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
