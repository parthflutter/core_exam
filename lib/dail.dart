import 'dart:js_util';

import 'package:core_exam/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home2 extends StatefulWidget {
  const home2({Key? key}) : super(key: key);

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {

  TextEditingController txtname = TextEditingController();
  TextEditingController txtnumber= TextEditingController();
  TextEditingController txtsms = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Contact"),
          leading: Icon(Icons.contact_page),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 15),
              TextFormField(
                controller: txtname,
                decoration: InputDecoration(
                  label: Text("Enter Name"),
                  disabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: txtnumber,
                decoration: InputDecoration(
                  label: Text("Enter Number"),
                  disabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: txtsms,
                decoration: InputDecoration(
                  label: Text("Enter sms"),
                  disabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  ),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(onPressed:(){
                s1.add(txtname.text);
                e1.add(txtnumber.text);
                sms.add(txtsms.text);
               Navigator.pop(context);
              } , child: Text("Submit"),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orangeAccent)),
              ),
            ],
          ),
        ),
        ),
      );
  }
}
