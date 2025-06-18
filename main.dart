import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(LandingPage());
}

class LandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contract management landingpage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white24,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Content(),
              footer()
              
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text("ABC",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),),
            ],
          ),
          Row(children: [
            TextButton(onPressed: (){}, child: Text("solution")),
            SizedBox(width: 10,),
            TextButton(onPressed: (){}, child: Text("customer")),
            SizedBox(width: 10,),
            TextButton(onPressed: (){}, child: Text("pricing")),
          ],),
          Row(children: [
            TextButton(onPressed: (){}, child: Text("login")),
            SizedBox(width: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green
              ),
              onPressed: (){}, child: Text("start now"))
          ],)
        ],),
      );
      
  }
}

class Content extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 60,horizontal: 60),
    child: SizedBox(
      height: 400,
      width: double.infinity,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Positioned(top: 2,
        left: 10,
        child: _avatarwitharrow(icon: Icons.person,
        color: Colors.purple,
        rotationAngle: 0.30*pi,
        isTop: true,),
        ),
        Positioned(top: 2,
        right: 30,
        child: _avatarwitharrow(icon: Icons.person,
        color: Colors.green,
        rotationAngle: 0.75*pi,
        isTop: true,
        ),
        ),
        Positioned(bottom: -2,
        left: 50,
        child: _avatarwitharrow(icon: Icons.person,
        color: Colors.orange,
        rotationAngle: 1.75*pi,
        isTop: false),
        ),
        Positioned(bottom: -2,
        right: 50,
        child: _avatarwitharrow(icon: Icons.person,
        color: Colors.red,
        rotationAngle: 1.30*pi,
        isTop: false),
        ),
        Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          children: [
            TextSpan(text: "One tool to"),
            TextSpan(
              text: " manage",
              style: TextStyle(
                color: Colors.green,
                decoration: TextDecoration.underline,
                decorationColor: Colors.lightGreenAccent,
              ),
            ),
            TextSpan(text: "\ncontracts and your team"),
          ],
        ),
        ),
        SizedBox(height: 30),
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut \nlabore et dolore magna aliqua.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87),
          ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 16,horizontal: 24),
              ),
              onPressed: (){}, child: Text("start for free"),
              ),
              SizedBox(width: 20),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16,horizontal: 24),
                ),
                onPressed: (){}, child: Text("get demo"),
                ),
          ],
        )
      ],
    ),
      ],
    ),
    ),
    );
  }
  Widget _avatarwitharrow({
  required IconData icon,
  required Color color,
  required double rotationAngle,
  required bool isTop, 
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: isTop
        ? [ 
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 33,
                backgroundColor: color,
                child: Icon(icon, color: Colors.white, size: 30),
              ),
            ),
            SizedBox(height: 6),
            Transform.rotate(
              angle: rotationAngle,
              child:  Icon(
                Icons.arrow_forward,
                size: 28,
                color: Colors.blueGrey,
              ),
            ),
          ]
        : [ 
            Transform.rotate(
              angle: rotationAngle,
              child: const Icon(
                Icons.arrow_forward,
                size: 28,
                color: Colors.blueGrey,
              ),
            ),
             SizedBox(height: 6),
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 33,
                backgroundColor: color,
                child: Icon(icon, color: Colors.white, size: 30),
              ),
            ),
          ],
  );
}

}

class footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, 
      color: Colors.yellow,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 9, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Trusted by top companies",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 30),
            Wrap(
              spacing: 40,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: [
                _buildLogo('assets/images/logo.png'),
                _buildLogo('assets/images/logo.png'),
                _buildLogo('assets/images/logo.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo(String path) {
    return Image.asset(
      path,
      height: 50,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          height: 50,
          width: 100,
          color: Colors.red.shade100,
          child: Center(child: Text("Not Found", style: TextStyle(fontSize: 12))),
        );
      },
    );
  }
}
