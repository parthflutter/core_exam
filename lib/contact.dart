
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

List s1 = [];
List e1 =[];
List sms =[];
class home1 extends StatefulWidget {
  const home1({Key? key}) : super(key: key);

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {

  TextEditingController txttype = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("My Contact"),
        backgroundColor: Colors.grey,
      ),
      body:
      ListView.builder(
        itemCount: s1.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.image),
            title: Text("${s1[index]}"),
            subtitle:Text("${e1[index]}"),
            trailing: Icon(Icons.call),
            
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, "dial").then((value) => setState((){}));
      }, child: Icon(Icons.add),
      ),
      ),
    );
  }
}
