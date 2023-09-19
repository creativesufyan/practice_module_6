import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: "Sufyan's App",
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button & Widgets"),
        centerTitle: true,
        actions: [
          Tooltip(
            message: 'Notifications',
            child: IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Notifications Bar Tapped")));
              },
              // tooltip: "Notifications",
            ),
          ),
          Tooltip(
            message: 'Settings',
            child: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Settings Tapped")));
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width:200,
              height: 100,
              margin: EdgeInsets.all(16),
              child: Text("Welcome"),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber,
                // border: Border.all(color: Colors.black,width: 4),
                // // borderRadius: BorderRadius.circular(10)
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(16),
                //   bottomRight: Radius.circular(16)
                // ),
                shape: BoxShape.circle,
              ),
            ),
            const Text("Welcome to my App"),
            const SizedBox(height: 10,),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Text Button Tapped")));
              },
              child: const Text("Send Email"),
            ),
            const SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  )
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Eleveted Button Tapped")));
                },
                onLongPress: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Long Press Tapped")));
                },
                child: const Text("Resend Email"),
              ),
            ),
            const SizedBox(height: 10,),
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Icon Button Tapped")));
                },
                icon: Icon(Icons.send)),
            OutlinedButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Outlined Button Tapped")));
                },
                onLongPress: (){},
                child: Text("Outline Button")
            ),
            const TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                label: Text("Enter your Name"),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                hintText: "Enter your Name",
                fillColor: Colors.lime,
                filled: true,
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                suffixIcon: Icon(Icons.person),
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            const TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                label: Text("Password"),
                hintText: "Enter your password",
                fillColor: Colors.lime,
                filled: true,
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                suffixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
