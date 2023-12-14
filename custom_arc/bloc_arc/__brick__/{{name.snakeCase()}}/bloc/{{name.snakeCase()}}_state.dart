import 'package:flutter/material.dart';

enum {{name.pascalCase()}}StateStatus { initial, loading, success, error }

@immutable
class {{name.pascalCase()}}State{
  const {{name.pascalCase()}}State({
    this.status = {{name.pascalCase()}}StateStatus.initial,
  });
  final {{name.pascalCase()}}StateStatus status;

{{name.pascalCase()}}State copyWith({
{{name.pascalCase()}}StateStatus? status,
  }) {
    return {{name.pascalCase()}}State(
      status: status ?? this.status,
    );
  }
}
