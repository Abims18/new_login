import 'package:flutter/material.dart';
import 'package:login_new/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors.lightBg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/welcome.webp"),
          
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 30),
            child: TextField(
              decoration: InputDecoration(
                labelText: "User Name",
                labelStyle: TextStyle(color: Colors.black),
                fillColor: Colors.white,
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: myColors.SomeYellow, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: myColors.SomeYellow, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 30),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                labelStyle: TextStyle(color: Colors.black),
                labelText: "Password",
                fillColor: Colors.white,
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: myColors.SomeYellow, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: myColors.SomeYellow, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 230, top: 10),
            child: Text("Forgot password?"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("New here? Click me"),
          ),
          Container(
            alignment: Alignment.center,
            width: 150,
            height: 50,
            color: myColors.SomeYellow,
            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
          )

        ],
      ),
    );
  }
}
