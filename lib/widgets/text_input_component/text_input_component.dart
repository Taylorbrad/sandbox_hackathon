import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class TextInputComponent extends StatelessWidget {
  // const d ({Key key}) : super(key: key);
  final String inputPrompt;
  final String hintText;
  var inTextController;

  TextInputComponent(this.inputPrompt, this.hintText, this.inTextController);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(inputPrompt, style: TextStyle(fontSize: 24)),
          SizedBox(height: 10,),
          TextField(controller: inTextController, decoration: InputDecoration(hintText: hintText),),
        ],
      ),
    );
  }
}