import 'package:flutter/material.dart';
import 'package:getx_project/res/components/internet_exceptions_widget.dart';


class SplashScreee extends StatefulWidget {
  const SplashScreee({super.key});

  @override
  State<SplashScreee> createState() => _SplashScreeeState();
}

class _SplashScreeeState extends State<SplashScreee> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: Column(children: [
         InternetExpectionsWidget(onPress: () {  },)
        ],),
      ),
    );
  }
}