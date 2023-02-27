import 'dart:js';

import 'package:flutter/material.dart';

import 'contact.dart';
import 'dail.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/' :(context) => home1(),
      'dial':(context) => home2(),
    },
  ),
  );
}