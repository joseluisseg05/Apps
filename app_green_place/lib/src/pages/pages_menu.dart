import 'dart:convert';

import 'package:app_green_place/src/pages/pages_detalle.dart';
import 'package:app_green_place/src/providers/prodivers_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class PageMenu extends StatefulWidget {
  PageMenu({Key key}) : super(key: key);

  @override
  _PageMenuState createState() => _PageMenuState();
}

class _PageMenuState extends State<PageMenu> {
  List<Container>dataOfHouse=new List();
  
  var data=[
        {
            "id":"1",
            "titulo":"Departamentos Green",
            "costo":"120000",
            "descripcion":"There is an old word with a changing detinition The word is 'Green'.\n\n\n We are starting to see it used to symbolize being environmentally friendly and Sustainablo.\n\n\nWith the rising costs of living and the concerns of global warming, more and more people and companies are looking for ways to be 'Green'.",
            "imagen":"img1.jpg"
        },
        {
            "id":"2",
            "titulo":"Departamentos LEV TAT",
            "costo":"250000",
            "descripcion":"There is an old word with a changing detinition The word is 'Green'.\n\n\nWe are starting to see it used to symbolize being environmentally friendly and Sustainablo. \n\n\nWith the rising costs of living and the concerns of global warming, more and more people and companies are looking for ways to be 'Green'.",
            "imagen":"img2.jpg"
        },
        {
            "id":"3",
            "titulo":"Departamentos Zulim",
            "costo":"89000",
            "descripcion":"There is an old word with a changing detinition The word is 'Green'.\n\n\nWe are starting to see it used to symbolize being environmentally friendly and Sustainablo. \n\n\nWith the rising costs of living and the concerns of global warming, more and more people and companies are looking for ways to be 'Green'.",
            "imagen":"img3.jpg"
        },
        {
            "id":"4",
            "titulo":"Zulim House",
            "costo":"320000",
            "descripcion":"There is an old word with a changing detinition The word is 'Green'. \n\n\nWe are starting to see it used to symbolize being environmentally friendly and Sustainablo. \n\n\nWith the rising costs of living and the concerns of global warming, more and more people and companies are looking for ways to be 'Green'.",
            "imagen":"img4.jpg"
        },
        {
            "id":"5",
            "titulo":"Mine House",
            "costo":"50000",
            "descripcion":"There is an old word with a changing detinition The word is 'Green'. \n\n\nWe are starting to see it used to symbolize being environmentally friendly and Sustainablo. \n\n\nWith the rising costs of living and the concerns of global warming, more and more people and companies are looking for ways to be 'Green'.",
            "imagen":"img5.jpg"
        },
        {
            "id":"6",
            "titulo":"VIP Green",
            "costo":"5000",
            "descripcion":"There is an old word with a changing detinition The word is 'Green'.\n\n\nWe are starting to see it used to symbolize being environmentally friendly and Sustainablo. \n\n\nWith the rising costs of living and the concerns of global warming, more and more people and companies are looking for ways to be 'Green'.",
            "imagen":"img6.jpg"
        }
    ];
  
  @override
  void initState() {
    _list();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(26, 26, 26, 1),
      child: GridView.count(
        crossAxisCount: 2,
        children: dataOfHouse,
        
      ),
    );
  }

  _list() async{
    
    for(var i = 0; i < data.length; i++){
      final auxdata = data[i];
      final String imagen     = auxdata["imagen"];
      final String titulo     = auxdata["titulo"];
      final String costo      = auxdata["costo"];
      final String descripcion= auxdata["descripcion"];
      
      dataOfHouse.add(
        _cardTipo2(imagen, titulo, costo, descripcion, auxdata),
      );

    }
  }

  Widget _cardTipo2(String imagen, String titulo, String costo, String descripcion, var aux) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Card(
        color: Color.fromRGBO(77, 77, 77, 1),
        child: Column(
          children: <Widget>[
            Hero(
              tag: aux['titulo'],
              child: Material(
                child: InkWell(
                  onTap: () =>
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => PageDetalle(
                          titulo: titulo,
                          imagen: imagen,
                          costo: costo,
                          detalle: descripcion,
                        ),
                      ),
                    ),
                    child: Image.asset(
                      "image/$imagen",
                      fit: BoxFit.cover,
                      height: 115.0,
                    ),
                  ),
                ),
              ),
            
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(  
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
                ),
              ],
            ),
            Text(
              "$titulo",
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            )
          ],
        ),
      ),
    );
 }
}