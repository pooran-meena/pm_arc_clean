import 'package:flutter/material.dart';

class {{name.pascalCase()}}Screen extends StatefulWidget {
  static const String id = '{{name.pascalCase()}}Screen';
  const {{name.pascalCase()}}Screen({super.key});

  @override
  State<{{name.pascalCase()}}Screen> createState() => _{{name.pascalCase()}}ScreenState();
}

class _{{name.pascalCase()}}ScreenState extends State<{{name.pascalCase()}}Screen> {

{{name.pascalCase()}}Controller ctrl = Get.put({{name.pascalCase()}}Controller());


@override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initialCall();
    });
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void initialCall(){

  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<{{name.pascalCase()}}Controller>(
            init: ctrl,
            builder: (controller) {
                return const Scaffold(
                  body: Center(
                    child: Text('{{name.pascalCase()}} Page'),
                  ),
                );
            }
    );

  }
}
