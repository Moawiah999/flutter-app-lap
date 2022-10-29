import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}
class _Home_ScreenState extends State<Home_Screen> {
  String groub = "";
  String? val;
  String? val2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            RadioListTile(
              title: Text("user"),
              value: "user",
              groupValue: groub,
              onChanged: (value) {
                setState(() {
                  groub = value.toString();
                  Future<void> _update(
                      [DocumentSnapshot? documentSnapshot]) async {
                    if (documentSnapshot != null) {
                    }
                  }
                });
              },
            ),
            RadioListTile(
              title: Text("admin"),
              value: "admin",
              groupValue: groub,
              onChanged: (valu) {
                setState(() {
                  groub = valu.toString();
                  print(groub);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}