import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';


class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
{{name.pascalCase()}}Bloc() : super(const {{name.pascalCase()}}State()) {
    on<{{name.pascalCase()}}Event>(_onGetData);
  }

  FutureOr<void> _onGetData({{name.pascalCase()}}Event event, Emitter<{{name.pascalCase()}}State> emit) async {
    emit(state.copyWith(status: {{name.pascalCase()}}StateStatus.loading));
  }
}
