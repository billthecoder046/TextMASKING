import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp(),
    title: 'TextMasking',
  )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _cnic = new MaskedTextController(mask: '00000-0000000-0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing TextMasking"),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            Image.asset('Images/img/idcard.png',
              height: 230,
              width: 340,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 30,),
            TextField(
              controller: _cnic,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: 'Enter CNIC',
                  hintText: 'e.g: 123456789123',
                  icon: new Icon(Icons.person_outline)),

              ),
        ],
            ),
        ),
    );
  }
}
