

import 'package:flutter/material.dart';
import 'package:my_sundarban/utils/text_styles.dart';



AppBar myAppbar(String? title) {
  return AppBar(

    title: Text(title??''),
    leading: const Icon(
      Icons.menu_rounded,
      size: 39,
    ),
    elevation: 0,
    backgroundColor: pColor,
  );
}
