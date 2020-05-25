import 'package:app_green_place/src/pages/pages_menu.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  //static final pageName="home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          final route = MaterialPageRoute(
            builder: (context)=>PageMenu()
          );
          Navigator.push(context, route);
        },
        child: Icon(
          Icons.keyboard_arrow_right, 
          size: 80.0,
          color: Color.fromRGBO(51, 204, 51, 1)
        ),
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
      ),
      body: Stack(
        children:<Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("image/dips_inicial.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Color.fromRGBO(0, 0, 0, 0.4),
                        child: Text(
                          "Green Places", 
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45.0,

                          ),
                        ),
                      )
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Color.fromRGBO(0, 0, 0, 0.4),
                        child: Text(
                          "Find you new home\n", 
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 204, 0, 1),
                            fontSize: 20.0,
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ] 
      )
    );
  }
}