import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'click'; // Variable to hold the button label
  int currentIndex =
      0; // Variable to track the current index of the bottom navigation bar

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
              'My First Flutter Application'), // Title for the app bar
        ),
        body: Center(
          child: currentIndex == 0
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.red,
                          primary: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            buttonName =
                                'clicked'; // Change the button label when pressed
                          });
                        },
                        child: Text(buttonName), // Display the button label
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buttonName =
                                'clicked'; // Change the button label when pressed
                          });
                        },
                        child: Text(buttonName), // Display the button label
                      ),
                    ],
                  ),
                )
              : Image.asset('images/Flash.png'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
          currentIndex:
              currentIndex, // Set the current index of the bottom navigation bar
          onTap: (int index) {
            setState(() {
              currentIndex =
                  index; // Update the current index when an item is tapped
            });
          },
        ),
      ),
    );
  }
}
