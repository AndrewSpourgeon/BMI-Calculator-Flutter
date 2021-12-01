import 'package:bmi_calc_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'boyBmi.dart';

import 'genderdrew.dart';

class BoyGirl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sheight=MediaQuery.of(context).size.height;
    var swidth=MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'BMI CALCULATOR',
            style: new TextStyle(
              fontFamily: 'Poppins',
              fontSize: sheight/35,
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_sharp),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: sheight/50),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GenderDrew(),
                    ),
                  );
                },
                child: new Container(
                  padding: EdgeInsets.only(left: 40.0, right: 40),
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
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: sheight/25,
              ),
              Text(
                "MENTION YOUR GENDER PLEASE",
                textAlign: TextAlign.center,
                style: new TextStyle(fontFamily: 'Poppins', fontSize: sheight/35),
              ),
              SizedBox(
                height: sheight/10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                new SvgPicture.asset(
                  'assets/man.svg',
                  height: sheight/9,
                  //width: sheight/,
                ),
                SizedBox(
                  width: sheight/45,
                ),
                ElevatedButton(
                  style: (ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    padding: EdgeInsets.symmetric(horizontal: sheight/12, vertical: sheight/80),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(60.0),
                    ),
                  )),
                  child: Text(
                    'Boy',
                    style: TextStyle(
                        fontSize: sheight/30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins light'),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BoyBmi(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  width: sheight/50,
                ),
                Icon(
                  Icons.male_rounded,
                  size: sheight/15,
                )
              ]),
              SizedBox(
                height: sheight/10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                new SvgPicture.asset(
                  'assets/woman.svg',
                  height: sheight/8,
                 // width: 110,
                ),
                SizedBox(
                  width: sheight/60,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange.shade800,
                    padding: EdgeInsets.symmetric(horizontal: sheight/12, vertical: sheight/80),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(60.0),
                    ),
                  ),
                  child: Text(
                    'Girl',
                    style: TextStyle(
                        fontSize: sheight/30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins light'),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BoyBmi(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  width: sheight/50,
                ),
                Icon(
                  Icons.female_rounded,
                  size: sheight/15,
                )
              ]),
              Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock_rounded,
                    size: sheight/24,
                  ),
                  SizedBox(
                    width: sheight/70,
                  ),
                  Text(
                    "The data is safe . No worries.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins light',
                      fontSize: sheight/38,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: sheight/7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
