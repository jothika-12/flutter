import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(LandingPage());
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contract management landingpage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFF1F8E9), Color(0xFFFFFFFF)],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(children: [Header(), Content(), footer()]),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "ABC",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text("Solution", style: TextStyle(color: Colors.black)),
                    SizedBox(width: 4),
                    Icon(Icons.keyboard_arrow_down, size: 18),
                  ],
                ),
              ),
              SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text("Customer", style: TextStyle(color: Colors.black)),
                    SizedBox(width: 4),
                    Icon(Icons.keyboard_arrow_down, size: 18),
                  ],
                ),
              ),
              SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text("Pricing", style: TextStyle(color: Colors.black)),
                    SizedBox(width: 4),
                    Icon(Icons.keyboard_arrow_down, size: 18),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  minimumSize: Size(100, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
                onPressed: () {},
                child: Text("login"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 8, 68, 11),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  minimumSize: Size(100, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text("Start now"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 60),
      child: SizedBox(
        height: 400,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.07,
                child: Image.asset(
                  'assets/images/gridlines.jpg',
                  height: 300,
                  width: 1000,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: 2,
              left: 100,
              child: _avatarwitharrow(
                icon: Icons.person,
                color: Colors.purple,
                rotationAngle: 0.30 * pi,
                isTop: true,
              ),
            ),
            Positioned(
              top: 2,
              right: 100,
              child: _avatarwitharrow(
                icon: Icons.person,
                color: Colors.green,
                rotationAngle: 0.75 * pi,
                isTop: true,
              ),
            ),
            Positioned(
              bottom: -2,
              left: 50,
              child: _avatarwitharrow(
                icon: Icons.person,
                color: Colors.orange,
                rotationAngle: 1.75 * pi,
                isTop: false,
              ),
            ),
            Positioned(
              bottom: -2,
              right: 50,
              child: _avatarwitharrow(
                icon: Icons.person,
                color: Colors.red,
                rotationAngle: 1.30 * pi,
                isTop: false,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    children: [
                      TextSpan(text: "One tool to "),
                      TextSpan(
                        text: "manage",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromRGBO(202, 238, 23, 1),
                          decorationThickness: 2.5,
                        ),
                      ),
                      TextSpan(text: "\ncontracts and your team"),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut \nlabore et dolore magna aliqua.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 4, 105, 8),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 24,
                        ),
                        minimumSize: Size(180, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Start for free"),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 24,
                        ),
                        minimumSize: Size(180, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Get demo"),
                    ),
                  ],
                ),
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
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/avatar.jpg',
                      height: 66,
                      width: 66,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Transform.rotate(
                angle: rotationAngle,
                child: const Icon(
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
              const SizedBox(height: 6),
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 33,
                  backgroundColor: color,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/avatar.jpg',
                      height: 66,
                      width: 66,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
    );
  }
}

class BackgroundLinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black26
      ..strokeWidth = 1.2
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height * 0.3);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.0,
      size.width,
      size.height * 0.3,
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      child: Row(
        children: [
          Text(
            "More than 100+ \n companies partner",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(width: 100),
          Expanded(
            child: Container(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HoverZoomImage(path: 'assets/images/logo.png'),
                  SizedBox(width: 130),
                  HoverZoomImage(path: 'assets/images/logo.png'),
                  SizedBox(width: 130),
                  HoverZoomImage(path: 'assets/images/logo.png'),
                  SizedBox(width: 130),
                  HoverZoomImage(path: 'assets/images/logo.png'),
                  SizedBox(width: 130),
                  HoverZoomImage(path: 'assets/images/logo.png'),
                  SizedBox(width: 130),
                  HoverZoomImage(path: 'assets/images/logo.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HoverZoomImage extends StatefulWidget {
  final String path;
  const HoverZoomImage({required this.path});
  @override
  _HoverZoomImageState createState() => _HoverZoomImageState();
}

class _HoverZoomImageState extends State<HoverZoomImage> {
  bool _hovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: AnimatedScale(
        scale: _hovering ? 1.1 : 1.0,
        duration: Duration(milliseconds: 200),
        child: GestureDetector(
          onTap: () {},
          child: Image.asset(
            widget.path,
            height: 40,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 40,
                width: 100,
                color: Colors.red.shade100,
                child: Center(
                  child: Text("Not Found", style: TextStyle(fontSize: 12)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
