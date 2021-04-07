import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EnterNum extends StatefulWidget {
  @override
  _EnterNumState createState() => _EnterNumState();
}

class _EnterNumState extends State<EnterNum> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome"),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(hintText: "Type a Phone Number", border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              controller: myController,
              obscureText: false,
              maxLength: 10,
            ),
            SizedBox(height: 16,),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop(myController.text);
                },
                child: Text('Ok!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                padding: EdgeInsets.symmetric(
                  vertical: 11.0,
                ))
          ],
        ),
      ),
    );
  }
}
