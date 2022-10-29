import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/componenet/update.dart';
import 'package:flutterapp/screen/details.dart';

var colors;
CollectionReference userRef = FirebaseFirestore.instance.collection("users");

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  String groub1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: colors,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            RadioListTile(
              title: Text("user"),
              value: "user",
              groupValue: groub1,
              onChanged: (value) {
                setState(() {
                  groub1 = value.toString();
                  Update.update(groub: groub1, docId: "wrSRHbdd2K1MW4PTGklx");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(),
                      ));
                });
              },
            ),
            RadioListTile(
              title: Text("admin"),
              value: "admin",
              groupValue: groub1,
              onChanged: (valu) {
                setState(() {
                  groub1 = valu.toString();
                  Update.update(groub: groub1, docId: "wrSRHbdd2K1MW4PTGklx");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(),
                      ));
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
