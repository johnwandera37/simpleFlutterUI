import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//main
void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.amber),
        home: FirstScreen()),
  );
}

// //class toast
// class toastNotify extends StatefulWidget {
//   @override
//   _toastNotify createState() {
//     return _toastNotify();
//   }
// }

// class _toastNotify extends State<toastNotify> {
//   @override
//   Widget build(BuildContext context) {

//     void showToast() {
//       Fluttertoast.showToast(
//           msg: "Goint to second Page",
//           toastLength: Toast.LENGTH_LONG,
//           gravity: ToastGravity.CENTER,
//           backgroundColor: Colors.amber,
//           textColor: Colors.black);
//     }
//   }
// }

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
          child: ElevatedButton(
              child: Text('Press to Go to Second Screen'),
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "Goint to second Page",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.amber,
                    textColor: Colors.black);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              })),
    );
  }
}

//page 2
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Second Screen')),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back to First Screen')),
        ));
  }
}
