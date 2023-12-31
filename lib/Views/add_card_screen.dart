import 'package:flutter/material.dart';

class AddMatchScreen extends StatelessWidget {
  const AddMatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var NameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Add Card",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                controller: NameController,
                decoration: InputDecoration(
                  label: Text("Name of boxing card"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  print(NameController.text);
                },
                child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
