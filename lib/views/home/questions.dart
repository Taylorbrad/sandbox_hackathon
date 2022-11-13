import 'package:flutter/material.dart';
import 'package:sandbox_hackathon/widgets/call_to_action/call_to_action.dart';
import 'package:sandbox_hackathon/widgets/centered_view/centered_view.dart';
import 'package:sandbox_hackathon/widgets/course_details/course_details.dart';
import 'package:sandbox_hackathon/widgets/navigation_bar/navigation_bar.dart';
import 'package:sandbox_hackathon/widgets/text_input_component/text_input_component.dart';
// import '../../widgets/navigation_bar/navigation_bar.dart';

class QuestionView extends StatelessWidget {
  // const HomeView ({Key key}) : super(key: key);

  var myZipController = TextEditingController(text: "");
  var myHouseAgeController = TextEditingController(text: "");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(Column(children: <Widget>[
        NavigationBar1(),
        Expanded(child: Column(
          children: [

            // SizedBox(height: 100,),
            Text("Help us get to know your house!", style: TextStyle(fontSize: 38),),
            SizedBox(height: 100,),
            TextInputComponent("What is your zip code?", "55555", myZipController),
            TextInputComponent("When was your home built?", "1995", myHouseAgeController),
            InkWell(
              onTap: () => {print("test")},
              child: CallToAction("Continue"),
            )
          ],
        )
        )
      ],),
      ),

    );
  }
}