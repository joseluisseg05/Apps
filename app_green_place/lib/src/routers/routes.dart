import 'package:app_green_place/src/pages/pages_home.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder>getRuotes(){
  return <String, WidgetBuilder>{
    '/':(BuildContext context)=> PageHome(),

  };

}