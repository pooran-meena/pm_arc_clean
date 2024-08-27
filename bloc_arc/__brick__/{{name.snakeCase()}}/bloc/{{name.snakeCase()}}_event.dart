import 'package:flutter/material.dart';
@immutable
abstract class {{name.pascalCase()}}Event {}

class Update{{name.pascalCase()}}Event extends {{name.pascalCase()}}Event{
  const Update{{name.pascalCase()}}Event({this.request});
  final int? ̉value;
}
