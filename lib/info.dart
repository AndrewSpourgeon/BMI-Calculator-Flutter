import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text('About BMI'),
          leading: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_rounded,
              size: 26.0,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: new Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: new Text(
                    'BMI under 18 =>',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: 25,
                      color: Colors.orange.shade500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Image.asset(
                    'assets/infoskinny.jpg',
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    'Skinny people tend to have BMI less than 18,these people have less muscle mass and have fat less than required.Under weight people comes under this category.Underweight usually occurs due to malnutrition which means not eating a protien,vitamin,mineral rich food in a balanced way.According to WHO stats 462 million people are underweight.',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: new Text(
                    'BMI between 18-25 =>',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: 25,
                      color: Colors.orange.shade500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Image.asset(
                    'assets/infohealthy.jpg',
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    'Healthy people come under this category.People who have a healthy exercise schedule and a healthy balanced diet tend to have BMI between 18 to 25.They have less health risks and diseases.',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: new Text(
                    'BMI between 25-30 =>',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: 25,
                      color: Colors.orange.shade500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Image.asset(
                    'assets/infofat.jpg',
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    'People who have more fat % than needed comes under this category.They have more health risks like descreased immune,hight cholestrol causing diabetes,more hunger etc.According to WHO neary 2 Billion people are overweight.',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: new Text(
                    'BMI obove 30 =>',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: 25,
                      color: Colors.orange.shade500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Image.asset(
                    'assets/infoobese.jpg',
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    'Obesity is a nightmare where people are completely destryed in context of both physical and mental health which commonly occurs due to genetics and hormonal imbalance.These people should take a special care about themselves.',
                    style: new TextStyle(
                      fontFamily: 'Apple',
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
