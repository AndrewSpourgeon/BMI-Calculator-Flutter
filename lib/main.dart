// @dart=2.9
import 'package:bmi_calc_app/homedrew.dart';
import 'package:flutter/material.dart';
import 'boygirl.dart';
import 'homedrew.dart';

void main() {
  runApp(MaterialApp(
    title: "BMI",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sheight=MediaQuery.of(context).size.height;
    var swidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              'assets/app.png',
              width: swidth,
              height: sheight/1.9,
              fit: BoxFit.fill,
            ),
            new SizedBox(
              height: sheight/15,
            ),
            Text("Welcome to our BMI calculator app",
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: sheight/23,
                    color: Colors.purple,
                    fontFamily: 'Apple')),
            new SizedBox(
              height: sheight/20,
            ),
            Text("Worth being aware about your health",
                textAlign: TextAlign.center,
                style: new TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.normal,
                    fontSize: sheight/40,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins light')),
            new SizedBox(
              height: sheight/12,
            ),
            new Row(
              children: [
                new Container(
                  padding: EdgeInsets.only(left: sheight/40, right: sheight/20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeDrew(),
                        ),
                      );
                    },
                    child: new Container(
                      padding: EdgeInsets.only(left: sheight/10, right: sheight/20),
                      width: sheight/30,
                      height: sheight/30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/drewp.jpg'),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
                /*SizedBox(
                  width: 150,
                ),*/
                new Container(
                  padding: EdgeInsets.only(
                    left: sheight/5.5,
                  ),
                  child: new Row(
                    children: [
                      new TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BoyGirl(),
                            ),
                          );
                        },
                        child: new Row(
                          children: [
                            Text("Let's Start",
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: sheight/40,
                                    color: Colors.blue,
                                    fontFamily: 'Apple')),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: sheight/40, color: Colors.black),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
