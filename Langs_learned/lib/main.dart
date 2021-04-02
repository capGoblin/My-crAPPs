import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: _slider(),
    ));

class _slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<_slider> {
  double Python = 0.0;
  double JavaScript = 0.0;
  double Java = 0.0;
  double C = 0.0;
  double HtmlCss = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Languages Learned, So Far!'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 10.0),
          child: Column(
            children: <Widget>[
              Text(
                '1. Python',
                style: TextStyle(
                  color: Colors.blueGrey[900],
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                ),
              ),
              Slider(
                value: Python,
                onChanged: (newRate) {
                  setState(() => Python = newRate);
                },
                min: 0.0,
                max: 10.0,
                divisions: 10,
                label: "$Python",
              ),
              SizedBox(height: 100.0),
              Text(
                '2. JavaScript',
                style: TextStyle(
                  color: Colors.blueGrey[900],
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                ),
              ),
              Slider(
                value: JavaScript,
                onChanged: (newRate) {
                  setState(() => JavaScript = newRate);
                },
                min: 0.0,
                max: 10.0,
                divisions: 10,
                label: "$JavaScript",
              ),
              SizedBox(height: 100.0),
              Text(
                '3. Java',
                style: TextStyle(
                  color: Colors.blueGrey[900],
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                ),
              ),
              Slider(
                value: Java,
                onChanged: (newRate) {
                  setState(() => Java = newRate);
                },
                min: 0.0,
                max: 10.0,
                divisions: 10,
                label: "$Java",
              ),
              SizedBox(height: 100.0),
              Text(
                '4. C++',
                style: TextStyle(
                  color: Colors.blueGrey[900],
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                ),
              ),
              Slider(
                value: C,
                onChanged: (newRate) {
                  setState(() => C = newRate);
                },
                min: 0.0,
                max: 10.0,
                divisions: 10,
                label: "$C",
              ),
              SizedBox(height: 100.0),
              Text(
                '5. Html & Css',
                style: TextStyle(
                  color: Colors.blueGrey[900],
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                ),
              ),
              Slider(
                value: HtmlCss,
                onChanged: (newRate) {
                  setState(() => HtmlCss = newRate);
                },
                min: 0.0,
                max: 10.0,
                divisions: 10,
                label: "$HtmlCss",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
