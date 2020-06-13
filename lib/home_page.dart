import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampleapp/main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: View(),
    );
  }
}

class View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConcentricPageView(
      colors: <Color>[Color(0xFF2d3447), Color(0xFFff6e6e)],
      radius: 500,
      pageSnapping: true,
      duration: Duration(seconds: 2),
      itemCount: 2,

      //physics: BouncingScrollPhysics(),
      itemBuilder: (index, value) {
       return pageCard(index, context);
      },
    );
  }
}

pageCard(index, context) {
  switch (index) {
    case 0:
      return PageCard(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: 250),
              Text(
                "Welcome",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Helvetica'),
                textAlign: TextAlign.center,
              ),
              Text('All Copyrights reserved. 2020', style: TextStyle(color: Colors.white),),

            ],
          ),
        ),
      );
      break;
    case 1:
      return PageCard(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: 250),
              GestureDetector(
                child: Text(
                  "Tap Here\n To Navigate",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Helvetica'),
                  textAlign: TextAlign.center,
                ),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyApp()));
                },
              ),

              Text('All Copyrights reserved. 2020', style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      );
      break;
  }
}

class PageCard extends StatelessWidget {
  Widget child;

  PageCard({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
