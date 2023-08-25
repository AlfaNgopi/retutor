import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstPage());
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String buttonText = 'ddd';
  int currentBottomIdx = 0;
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('anjay')),
        body: Center(
          child: currentBottomIdx == 0
              ? Container(
                  height: double.infinity,
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (contexty) => SecondPage()),
                            );
                          },
                          child: Text(buttonText))
                    ],
                  ))
              : Container(
                  height: double.infinity,
                  color: isClicked ? Colors.yellow : Colors.red,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isClicked = !isClicked;
                      });
                    },
                    child: Image.asset('images/elsa.webp'),
                  ),
                ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'wow', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'wo2', icon: Icon(Icons.settings))
          ],
          currentIndex: currentBottomIdx,
          onTap: (int bottomIdx) {
            setState(() {
              currentBottomIdx = bottomIdx;
            });
          },
        ));
  }
}

