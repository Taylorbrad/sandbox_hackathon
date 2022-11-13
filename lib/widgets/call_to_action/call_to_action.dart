
import 'package:flutter/material.dart';
import 'package:sandbox_hackathon/views/home/questions.dart';


class CallToAction extends StatelessWidget {
  // const d ({Key key}) : super(key: key);
  final String title;

  CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: Text(
            title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          ),
        decoration: BoxDecoration(color: Color.fromARGB(255, 31, 229, 146),
        borderRadius: BorderRadius.circular(5)),
    );
  }

  GetSchedule()
  {
    print("test");
    // Navigator.of(context, rootNavigator: true).pop(context);

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => QuestionView()),
    // );
    // Navigator.of(context).push(
    //     MaterialPageRoute<void>(
    //         builder: (context) {
    //           return QuestionView();
    //         }
    //     ));
  }

}