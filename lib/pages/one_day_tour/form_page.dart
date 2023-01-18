import 'package:flutter/material.dart';
import 'package:my_sundarban/utils/common_utils.dart';
import 'package:my_sundarban/utils/text_styles.dart';

class OneDayTourTicketFormPage extends StatefulWidget {
  const OneDayTourTicketFormPage({Key? key}) : super(key: key);

  @override
  State<OneDayTourTicketFormPage> createState() =>
      _OneDayTourTicketFormPageState();
}

class _OneDayTourTicketFormPageState extends State<OneDayTourTicketFormPage> {
  final items = ['mongla', 'munshigonj', 'Bagerhat'];
  String? spotGroupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar('PURCHASE TICKET'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField(
              style: const TextStyle(
                  fontFamily: robotoReg,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: formFieldColor),
              items: items
                  .map((item) => DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      ))
                  .toList(),
              onChanged: (value) {},
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.all(16),
                prefixIcon: Icon(Icons.location_on),
                prefixIconColor: iconColor,
                label: Text(
                  'Starting Point',
                  style: TextStyle(
                    fontFamily: robotoBold,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: formFieldColor,
                  ),
                ),
                hintText: 'select',
                focusColor: pColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: pColor),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            const Text(
              'Use the Checkmark to Choose a Spot...',
              style: TextStyle(
                  color: Color.fromRGBO(102, 102, 102, 1),
                  fontWeight: FontWeight.w700,
                  fontSize: 17),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      height: 180,
                      width: 170,
                      child: GridTile(
                        header: GridTileBar(
                          leading: Transform.scale(
                            scale: 1.2,
                            child: Radio(
                              // materialTapTargetSize: MaterialTapTargetSize.padded ,
                                value: 'Karamjol',
                                groupValue: spotGroupValue,
                                onChanged: (value){

                                  setState(() {
                                    spotGroupValue = value;
                                  });
                                }),
                          ),
                        ),
                        footer: GridTileBar(
                          title: Text(
                            'Karamjal',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text('Spot Details »',style: TextStyle(fontSize:15,color: Colors.white,fontWeight: FontWeight.w300 ),),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/spots/karamjal.jpg',
                                ),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Color.fromRGBO(24, 30, 25, 0.45),
                                    BlendMode.srcOver)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    width: 170,
                    child: GridTile(
                      header: GridTileBar(
                        leading: Transform.scale(
                          scale:1.2 ,
                          child: Radio(
                              // materialTapTargetSize: MaterialTapTargetSize.padded ,
                              value: 'Harbariya',
                              groupValue: spotGroupValue,
                              onChanged: (value){

                                setState(() {
                                  spotGroupValue = value;
                                });

                              }),
                        ),
                      ),
                      footer: GridTileBar(
                        title: Text(
                          'Harbaria',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text('Spot Details »',style: TextStyle(fontSize:15,color: Colors.white,fontWeight: FontWeight.w300 ),),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/spots/harbaria.jpg',
                              ),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Color.fromRGBO(24, 30, 25, 0.45),
                                  BlendMode.srcOver)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
