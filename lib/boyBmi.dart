import 'package:bmi_calc_app/drew.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'boygirl.dart';
import 'main.dart';
import 'drew.dart';
import 'result.dart';

class BoyBmi extends StatefulWidget {
  @override
  BoyBmiState createState() => BoyBmiState();
}

class BoyBmiState extends State<BoyBmi> {
  /*int height = 0;
  int weight = 0;
  double squareheight = 0.0;
  double squarem = 0.0;
  double result = 0.0;
  String sresult = '';*/
  TextEditingController heightTEC = TextEditingController();
  TextEditingController weightTEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var sheight = MediaQuery.of(context).size.height;
    var swidth = MediaQuery.of(context).size.width;
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        centerTitle: true,
        leading: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.purple.shade300,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            size: 26.0,
          ),
        ),
        title: Text(
          'BMI CALCULATOR',
          style: new TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Drew(),
                  ),
                );
              },
              child: new Container(
                padding: EdgeInsets.only(left: 50.0),
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/drewp.jpg'),
                      fit: BoxFit.contain),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );
              },
              child: Icon(
                Icons.home_rounded,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: sheight / 20,
            ),
            Text(
              'Fill the details',
              style: new TextStyle(fontFamily: 'Apple', fontSize: sheight / 25),
            ),
            SizedBox(
              height: 100,
            ),
            new Container(
              margin: const EdgeInsets.only(right: 80, left: 80),
              child: TextField(
                controller: heightTEC,
                cursorColor: Colors.purple,
                style: TextStyle(
                  fontFamily: 'Apple',
                  color: Colors.purple,
                  fontSize: 20,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: new InputDecoration(
                  // contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                  prefixIcon: Icon(
                    Icons.height_rounded,
                    size: 30,
                    color: Colors.purple,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 2.0,
                    ),
                    borderRadius: new BorderRadius.circular(25.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                  ),
                  hintText: 'Enter Your Height',
                ),
              ),
            ),
            Text(
              '(in centimetres)',
              style: new TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            new Container(
              margin: const EdgeInsets.only(right: 80, left: 80),
              child: TextField(
                controller: weightTEC,
                /* onChanged: (value) {
                  setState(() {
                    weight = num.tryParse(value) as int;
                    double squarem = squareheight / 10000;
                    double result = (weight) / squarem;
                    String sresult = result.toString();
                  });
                },*/
                cursorColor: Colors.orange.shade700,
                style: TextStyle(
                  fontFamily: 'Apple',
                  color: Colors.orange.shade700,
                  fontSize: 20,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: new InputDecoration(
                    prefixIcon: Icon(
                      Icons.monitor_weight_rounded,
                      size: 30,
                      color: Colors.orange.shade700,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange.shade700,
                        width: 2.0,
                      ),
                      borderRadius: new BorderRadius.circular(25.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                    ),
                    hintText: 'Enter Your Wieght'),
              ),
            ),
            Text(
              '(in kilograms)',
              style: new TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {
                int height = int.parse(heightTEC.text);
                int weight = int.parse(weightTEC.text);
                int squareheight = height * height;
                double squarem = squareheight / 10000;
                double result = weight / squarem;
                int inresult = result.round();
                double per = inresult / 100;

                String sresult = result.toString();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Result(sresult, result, per, inresult),
                  ),
                );
                print(sresult);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              ),
              child: Text(
                'Calculate',
                style: new TextStyle(
                  fontFamily: 'Apple',
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            )
          ],
        ),
      ),
    ));
  }
}
