import 'package:flutter/material.dart';

void main() {
  runApp(SecondApp());
}
// class MainApp extends StatelessWidget{
//   String displaytext="jo";
//   @override
//   Widget build(BuildContext context) {
//   return MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("change hi"),
//       ),
//       body: Column(
//         children: [
//           Text(displaytext),
//           MaterialButton(onPressed:() {
//             print(displaytext);
//             displaytext="bye";
//             print(displaytext);
//           },
//           child: Text("click"),)
//         ],
//       ),
//     ),
//   );
//   }
// }


class SecondApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SecondAppState();
  }
}

class SecondAppState extends State<SecondApp>{
   String displaytext="jo";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("change hi"),
      ),
      body: Column(
        children: [
          Text(displaytext),
          MaterialButton(onPressed:() {
            setState(() {
              displaytext="bye";
            });
          },
          child: Text("click"),)
        ],
      ),
    ),
  );
  }
  }
