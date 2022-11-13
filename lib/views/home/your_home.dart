import 'package:flutter/material.dart';

import '../../widgets/call_to_action/call_to_action.dart';
import '../../widgets/centered_view/centered_view.dart';
import '../../widgets/navigation_bar/navigation_bar.dart';
import '../../widgets/text_input_component/text_input_component.dart';

import 'package:open_weather_client/open_weather.dart';

import 'package:sandbox_hackathon/DataCache.dart' as globals;

class YourHomeView extends StatelessWidget {
  // const d ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // globals.zipCode = "84721";
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(Column(children: <Widget>[
        NavigationBar1(),
        Expanded(child: Column(
          children: [

            // SizedBox(height: 100,),
            Text("Your Home (" + (2022 - int.parse(globals.homeAge)).toString() + " years old)", style: TextStyle(fontSize: 38),),
            SizedBox(height: 100,),
            Text("Based on your zip code, we recommend the following maintenance schedule:", style: TextStyle(fontSize: 28),),
            Row(
              children: [
                SizedBox(width: 90,),

                Column(children: [SizedBox(height: 30,),Text("Spring", style: TextStyle(fontSize: 20),),Text("Clean Gutters"), Text("Deep clean carpets"),Text("Vacuum AC units")],),
                SizedBox(width: 100,),
                Column(children: [SizedBox(height: 30,),Text("Summer", style: TextStyle(fontSize: 20),),Text("Replace HVAC Filter"), Text("Clean Dryer Vents"),Text("Check all faucets for dripping")],),
                SizedBox(width: 100,),
                Column(children: [SizedBox(height: 30,),Text("Fall", style: TextStyle(fontSize: 20),),Text("Clean chimney"), Text("Inspect all Window and Door Seals"),Text("Check for leaky pipe")],),
                SizedBox(width: 100,),
                Column(children: [SizedBox(height: 30,),Text("Winter", style: TextStyle(fontSize: 20),),Text("Clean and inspect HVAC system"), Text("Inspect for roof leaks"),Text("Vacuum AC units")],),
              ],
            ),
            SizedBox(height: 50,),
            Text("Trusted providers local to " + globals.zipCode + ":", style: TextStyle(fontSize: 28),),
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 90,),

                CallToAction("Bobs Cleaners"),
                SizedBox(width: 100,),
                CallToAction("Mr. Handyman "),
                SizedBox(width: 100,),
                CallToAction("Earl's Home Cleaning"),

              ],
            ),
            // InkWell(
            //   onTap: () => {print("test")},
            //   child: CallToAction("Continue to Local Providers"),
            // )
          ],
        )
        )
      ],),
      ),

    );
  }
}