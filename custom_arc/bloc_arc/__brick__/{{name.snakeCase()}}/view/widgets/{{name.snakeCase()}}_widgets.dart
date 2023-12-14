import 'package:flutter/cupertino.dart';

class {{name.pascalCase()}}Widget{
  static Widget body({required String title}){
    return Center(
      child: Text('$title Page'),
    );
  }
}