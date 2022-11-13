import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  // const d ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text('Maintenance Master', style: TextStyle(fontWeight: FontWeight.w800, height: .9, fontSize: 48),),
          SizedBox(height: 30,),
          Text("Want to stay on top of your house maintenance? This is defs the place to do so", style: (TextStyle(fontSize: 21, height: 1.7))
          ),
        ],
      )
    );
  }
}