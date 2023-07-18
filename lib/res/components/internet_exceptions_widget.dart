import 'package:flutter/material.dart';
import 'package:getx_project/res/routes/colors/app_color.dart';

class InternetExpectionsWidget extends StatefulWidget {
  final VoidCallback onPress;
   const InternetExpectionsWidget({super.key, required this.onPress});

  @override
  State<InternetExpectionsWidget> createState() =>
      _InternetExpectionsWidgetState();
}

class _InternetExpectionsWidgetState extends State<InternetExpectionsWidget> {
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Icon(
            Icons.cloud_off,
            color: Appcolor.blackColor,
            size: 50,
          ),
          const Text('Please check your \ninternet connection'),
          // SizedBox(height: height *5),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              child: const Text("Retry"),
            ),
          )
        ],
      ),
    );
  }
}
