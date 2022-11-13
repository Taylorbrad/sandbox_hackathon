import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailInUseError = "email-already-in-use";
  final invaildEmailError = "invalid-email";
  final weakPasswordError = "weak-password";

  final myControllerName = TextEditingController(text: "");
  final myControllerEmail = TextEditingController(text: "");
  var myControllerPass = TextEditingController(text: "");
  var myControllerConfirmPass = TextEditingController(text: "");

  bool _passwordInvisible = true;
  bool isRegistering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const ListTile(
            title: Center(
                child: Padding(
              padding: EdgeInsets.all(5.0),
            )),
          ),
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 400, /* maxHeight: 400*/
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.orange,
                      Colors.yellow,
                      Colors.green,
                      Colors.blue,
                      Colors.deepPurple
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    tileMode: TileMode.repeated,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 27, right: 15, bottom: 15),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child:
                                        Image.asset('assets/MyRealState.png'),
                                  )),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, bottom: 10),
                                  child: Text(
                                      isRegistering ? 'Register' : 'Login',
                                      style: const TextStyle(
                                          fontSize: 24, color: Colors.black)),
                                ),
                              ),
                              Visibility(
                                visible: isRegistering,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: ListTile(
                                    title: TextField(
                                        controller: myControllerName,
                                        decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Name')),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: ListTile(
                                  title: TextField(
                                      controller: myControllerEmail,
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Email')),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: ListTile(
                                  title: TextField(
                                      obscureText: _passwordInvisible,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      controller: myControllerPass,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        labelText: 'Password',
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                              // Based on passwordVisible state choose the icon
                                              _passwordInvisible
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: Colors.black54),
                                          onPressed: () {
                                            setState(() {
                                              _passwordInvisible =
                                                  !_passwordInvisible;
                                            });
                                          },
                                        ),
                                      )),
                                ),
                              ),
                              Visibility(
                                visible: isRegistering,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: ListTile(
                                    title: TextField(
                                        obscureText: _passwordInvisible,
                                        enableSuggestions: false,
                                        autocorrect: false,
                                        controller: myControllerConfirmPass,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Confirm Password',
                                        )),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: Row(children: <Widget>[
                                  Visibility(
                                    visible: isRegistering,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        print("Card Clicked");
                                      },
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.black),
                                      child: const Text("Back"),
                                    ),
                                  ),
                                  Visibility(
                                    visible: !isRegistering,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        () {
                                          print("Card Clicked");
                                        };
                                      },
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.black),
                                      child: const Text("Login"),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Visibility(
                                    visible: isRegistering,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        print("Card Clicked");
                                      },
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.black),
                                      child: const Text("Register new user"),
                                    ),
                                  ),
                                  Visibility(
                                    visible: !isRegistering,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        print("Card Clicked");
                                      },
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.black),
                                      child: const Text("Register"),
                                    ),
                                  ),
                                ]),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //   content: Text("Email:            test@test.test \nPassword:     testtest"),
                // ));
                myControllerEmail.text = "test@test.test";
                myControllerPass.text = "testtest";
              },
              child: const Text('Fill example login credentials'),
            ),
          ),
          Visibility(
            visible: false,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                child: const Text('Forgot Password? Click here!'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
