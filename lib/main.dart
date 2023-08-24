import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonText = 'ddd';
  int currentBottomIdx = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: const Text('anjay')),
          body: Center(
              child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            print('clicked');

                            setState(() {
                              buttonText = 'Pressed';
                            });
                          },
                          child: Text(buttonText)),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,

                        ),
                          onPressed: () {
                            print('clicked');

                            setState(() {
                              buttonText = 'Pressed';
                            });
                          },
                          child: Text(buttonText))
                    ],
                  ))),
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
          )),
    );
  }
}
