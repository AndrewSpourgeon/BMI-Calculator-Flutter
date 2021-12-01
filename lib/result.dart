import 'package:bmi_calc_app/boyBmi.dart';
import 'package:bmi_calc_app/info.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './main.dart';

class Result extends StatelessWidget {

  final String stringresult;
  final double doubleresult;
  final double resultper;
  final int inrresult;
  Result(this.stringresult, this.doubleresult, this.resultper, this.inrresult);
  Widget getsImage() {
    Image resultImage;
    if (doubleresult <= 18.0) {
      resultImage = Image(
        height: 250,
        width: 250,
        alignment: Alignment.center,
        image: AssetImage(
          'assets/skinny.png',
        ),
      );
    } else if (doubleresult > 18.0 && doubleresult <= 25.0) {
      resultImage = Image(
        height: 250,
        width: 250,
        alignment: Alignment.center,
        image: AssetImage(
          'assets/healthy.png',
        ),
      );
    } else if (doubleresult > 25.0 && doubleresult <= 30.0) {
      resultImage = Image(
        height: 250,
        width: 250,
        alignment: Alignment.center,
        image: AssetImage(
          'assets/fat.png',
        ),
      );
    } else {
      resultImage = Image(
        height: 250,
        width: 250,
        alignment: Alignment.center,
        image: AssetImage(
          'assets/obese.png',
        ),
      );
    }
    return resultImage;
  }

  String get resultPhrase {
    String resultText;
    if (doubleresult <= 18.0) {
      resultText = 'Looks like you are skinny(underweight)';
    } else if (doubleresult > 18.0 && doubleresult <= 25.0) {
      resultText = 'That\'s Nice ! You are a healthy package';
    } else if (doubleresult > 25.0 && doubleresult <= 30.0) {
      resultText = 'Looks like you are carrying more fat than needed';
    } else {
      resultText = "Oops ! You are obese dear !";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    var sheight=MediaQuery.of(context).size.height;
    var swidth=MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade600,
          centerTitle: true,
          title: Text(
            'Result',
            style: new TextStyle(
              fontFamily: 'Poppins',
              fontSize: 30,
            ),
          ),
          leading: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.purple.shade600),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.restart_alt_rounded,
              size: 30,
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
                      builder: (context) => Info(),
                    ),
                  );
                },
                child: new Container(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Icon(
                    Icons.info_rounded,
                    size: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
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
        body: SafeArea(
            child: SingleChildScrollView(
          child: new Column(
            children: [
              SizedBox(
                height: 40,
              ),
              new Container(
                padding: EdgeInsets.only(
                  left: 60,
                  right: 60,
                ),
                child: Text(
                  'Your Body Mass Index(BMI) is:',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontFamily: 'Apple',
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              new Container(
                padding: EdgeInsets.only(
                  left: 60,
                  right: 60,
                ),
                child: Text(
                  '$stringresult',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontFamily: 'Apple',
                    color: Colors.purple,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              new Container(
                child: CircularPercentIndicator(
                  radius: 170.0,
                  lineWidth: 10.0,
                  backgroundColor: Colors.grey,
                  percent: resultper,
                  progressColor: Colors.green.shade900,
                  circularStrokeCap: CircularStrokeCap.round,
                  animation: true,
                  animationDuration: 1100,
                  center: Text(
                    '$inrresult %',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              new Container(
                padding: EdgeInsets.only(
                  left: 60,
                  right: 60,
                ),
                child: getsImage(),
              ),
              SizedBox(
                height: 50,
              ),
              new Container(
                padding: EdgeInsets.only(
                  left: 60,
                  right: 60,
                ),
                child: Text(
                  resultPhrase,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontFamily: 'Apple',
                    fontSize: 30,
                    color: Colors.purple,
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
