import 'package:flutter/material.dart';

class PageDetalle extends StatelessWidget {
  PageDetalle({this.titulo, this.imagen, this. costo, this.detalle});
  final String titulo;
  final String imagen;
  final String costo;
  final String detalle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(26, 26, 26, 1),
        child: ListView(
          
          children: <Widget>[
            Container(
              color: Color.fromRGBO(77, 77, 77, 1),
              height: 210.0,
              child: Row(
                children: <Widget>[
                  Hero(
                    tag: titulo,
                    child: Material(
                      color: Color.fromRGBO(77, 77, 77, 1),
                      child: InkWell(
                        child: Image.asset(
                            "image/$imagen",
                            height:210.0,
                            width: 210.0,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container( 
                        width: 170.0, 
                          color: Color.fromRGBO(0, 0, 0, 0.4),
                          child: Text(
                            "\$$costo",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromRGBO(255, 204, 0, 1),
                              
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 50.0),
                        width: 150.0,
                        child: Text("2020 Green Realty Todas los casas y departamentos estan sujetos a combio sin aviso previo",
                        style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                      ),
                    ],
                  )
                ],
              )
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Column(

                children: <Widget>[
                  Text(
                    "$detalle",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,

                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 4.0,
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.only(left: 30.0,top: 15.0),
              child: Text("More details?",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
            ),
            _crearInputs(),
            Container(
              padding: EdgeInsets.only(right: 20.0),
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                child: Text("Send"),
                color: Color.fromRGBO(204, 255, 102, 1),
                textColor: Colors.black,
                //shape: StadiumBorder(),
                onPressed: (){}
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearInputs() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          TextField(
            textCapitalization: TextCapitalization.sentences,//poner en mayusculas 
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(77, 77, 77, 1),
              border: OutlineInputBorder(//bordeado del input
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: "Name",//text dentro
              icon: Icon(Icons.account_circle, color: Color.fromRGBO(204, 255, 102, 1),),//icono a izquierda fuera del input
            ),
          ),
          Container(
            height: 6.0,
          ),
          TextField(
            textCapitalization: TextCapitalization.sentences,//poner en mayusculas 
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(77, 77, 77, 1),
              border: OutlineInputBorder(//bordeado del input
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: "Last name",//text dentro
              icon: Icon(Icons.account_circle, color: Color.fromRGBO(204, 255, 102, 1),),//icono a izquierda fuera del input
            ),
          ),
          Container(
            height: 6.0,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            textCapitalization: TextCapitalization.sentences,//poner en mayusculas 
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(77, 77, 77, 1),
              border: OutlineInputBorder(//bordeado del input
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: "Email",//text dentro
              icon: Icon(Icons.email, color: Color.fromRGBO(204, 255, 102, 1),),//icono a izquierda fuera del input
            ),
          ),
          Container(
            height: 6.0,
          ),
        ],
      ),
    );
  }

  
 
}