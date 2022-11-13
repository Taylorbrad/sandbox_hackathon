import 'package:flutter/material.dart';
import 'package:sandbox_hackathon/views/home/questions.dart';
import 'package:sandbox_hackathon/views/home/user_input.dart';
import 'package:sandbox_hackathon/widgets/call_to_action/call_to_action.dart';
import 'package:sandbox_hackathon/widgets/centered_view/centered_view.dart';
import 'package:sandbox_hackathon/widgets/course_details/course_details.dart';
import 'package:sandbox_hackathon/widgets/navigation_bar/navigation_bar.dart';
// import '../../widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // const HomeView ({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(Column(children: <Widget>[
          NavigationBar1(),
        Expanded(child: Row(
          children: [
            CourseDetails(),
            Expanded(child: Center(child: InkWell(onTap: GetSchedule, child: CallToAction('Get Your Schedule'))),)
        ],
        )
        )
        ],),
      ),

    );
  }

  GetSchedule()
  {
    print("test");
    // Navigator.of(context, rootNavigator: true).pop(context);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserInputView()),
    );

  }
}