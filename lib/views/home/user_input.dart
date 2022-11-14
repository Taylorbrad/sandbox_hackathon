import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sandbox_hackathon/views/home/your_home.dart';
import 'package:sandbox_hackathon/widgets/call_to_action/call_to_action.dart';
import 'package:sandbox_hackathon/widgets/centered_view/centered_view.dart';
import 'package:sandbox_hackathon/widgets/course_details/course_details.dart';
import 'package:sandbox_hackathon/widgets/navigation_bar/navigation_bar.dart';
import 'package:sandbox_hackathon/widgets/text_input_component/text_input_component.dart';

import '../../firebase_options.dart';

import '../../DataCache.dart' as globals;

// import '../../widgets/navigation_bar/navigation_bar.dart';

class UserInputView extends StatefulWidget {
  @override
  State<UserInputView> createState() => _UserInputViewState();
}

class _UserInputViewState extends State<UserInputView> {
  // const HomeView ({Key key}) : super(key: key);
  var myZipController = TextEditingController(text: "");

  var myHouseAgeController = TextEditingController(text: "");

  final myControllerName = TextEditingController(text: "");

  final myControllerEmail = TextEditingController(text: "");

  var myControllerPass = TextEditingController(text: "");

  var myControllerConfirmPass = TextEditingController(text: "");

  var myControllerUsername = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(Column(children: <Widget>[
        NavigationBar1(),
        Expanded(child: SingleChildScrollView(
          child: Column(
            children: [

              Text("We need a bit more data", style: TextStyle(fontSize: 38),),
              SizedBox(height: 100,),
              TextInputComponent("What is your zip code?", "55555", myZipController),
              TextInputComponent("When was your home built?", "1995", myHouseAgeController),
              TextInputComponent("Name", "John Doe", myControllerName),
              TextInputComponent("Email Address", "abc@abc.com", myControllerEmail),
              TextInputComponent("Username", "johndoe", myControllerUsername),
              TextInputComponent("Password", "********", myControllerPass),
              TextInputComponent("Confirm Password", "********", myControllerConfirmPass),
              InkWell(
                onTap: () => {_register()},
                child: CallToAction("Continue"),
              )
            ],
          ),
        )
        )
      ],),
      ),

    );
  }

  //
  void _register() async {
    showDialog(
      //This creates the loading indicator
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );
    // var DBInstance = FirebaseFirestore.instance;

    String? uid;

    // print(myControllerUsername.text + " " + myControllerEmail.text);

    try {

      if (myControllerConfirmPass.text != myControllerPass.text)
      {
        print("insame");
        throw FirebaseAuthException(code: "Passwords do not match");
      }

      print(myControllerEmail.text + " " + myControllerPass.text);


      UserCredential test =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: myControllerEmail.text,
        password: myControllerPass.text,);


      uid = test.user?.uid.toString();

      print(uid);

      var username = myControllerEmail.text;
      var password = myControllerPass.text;

      print(username + " " + password);

      try {
        //attempt login
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: username, password: password);
      } on FirebaseAuthException catch (e) {
        print("fail1");
      }
      // var DBInstance =

      final docuser = FirebaseFirestore.instance.collection('Users').doc(myControllerEmail.text);

      final json = {
        'email': myControllerEmail.text,
        'zip': myZipController.text,
        'home_age': myHouseAgeController.text,
        'name': myControllerName.text,
        'password': myControllerPass.text,
      };

      globals.zipCode = myZipController.text;
      globals.homeAge = myHouseAgeController.text;

      await docuser.set(json);

    }
    catch (e)
    {
      print(e);
    }
    Navigator.of(context, rootNavigator: true)
        .pop(context);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => YourHomeView()),
    );

  }

  void _createUser() async {

    final docuser = FirebaseFirestore.instance.collection('Users').doc(myControllerEmail.text);

    final json = {
      'email': myControllerEmail.text,
      'Zip Code': myZipController.text,
      'Home Age': myHouseAgeController.text,
      'name': myControllerName.text,
      'password': myControllerPass.text,
    };

    await docuser.set(json);
  }
}