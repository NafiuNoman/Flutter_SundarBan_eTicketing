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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar('PURCHASE TICKET'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
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
              ),
            ),
            Container(
              decoration: BoxDecoration(),
            )
          ],
        ),
      ),
    );
  }
}
