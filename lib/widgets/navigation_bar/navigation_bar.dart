import 'package:flutter/material.dart';

class NavigationBar1 extends StatelessWidget {
  const NavigationBar1({super.key});

  // const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('hammer.png'),
          ),
          Text("Maintenance Master", style: TextStyle(fontSize: 56, fontWeight: FontWeight.w900),),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem('Learn More'),
              SizedBox(
                width: 60,
              ),
              _NavBarItem('About Us'),
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}

// //
// // class d extends StatelessWidget {
// //   const d ({Key key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container()
// //   }
// // }