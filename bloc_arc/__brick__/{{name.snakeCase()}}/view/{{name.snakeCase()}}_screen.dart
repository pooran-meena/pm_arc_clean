import 'package:flutter/material.dart';

class {{name.pascalCase()}}Screen extends StatelessWidget {
  static const id = '/{{name.pascalCase()}}Screen';
  const {{name.pascalCase()}}Screen({super.key,});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => {{name.pascalCase()}}Bloc(),
      child: _{{name.pascalCase()}}Screen(),
    );
  }
}

class _{{name.pascalCase()}}Screen extends StatefulWidget {
  const _{{name.pascalCase()}}Screen({super.key});

  @override
  State<_{{name.pascalCase()}}Screen> createState() => _{{name.pascalCase()}}ScreenState();
}

class _{{name.pascalCase()}}ScreenState extends State<_{{name.pascalCase()}}Screen> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initialCall();
    });
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }

  void initialCall(){

  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: const CustomAppBar(title: AppStrings.{{name.pascalCase()}}),
    backgroundColor: AppColors.themeColor,
    body: BlocConsumer<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}Bloc>(
      listener: (context, state) {
        if (state.status == {{name.pascalCase()}}StateStatus.success) {
          // ToastCustom.showToast(msg: state.responseMessage ?? '');
        }
      },
      builder: (context, state) {
        return LoadScreen(
          isLoading: state.status == {{name.pascalCase()}}StateStatus.loading,
          widget: Center(
            child: Text('{{name.pascalCase()}} Page'),
          )
        );
      }
    )
  );

  }
}
