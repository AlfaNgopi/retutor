
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
  String buttonText = 'ddd';
  int currentBottomIdx = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                            onPressed: () {


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
                              setState(() {
                                buttonText = 'Pressed';
                              });
                            },
                            child: Text(buttonText))
                      ],
                    ))
                : Image.network('https://images-ng.pixai.art/images/thumb/9f61361f-162b-4b7e-9258-cd5751cc2085'),
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
          )),
    );
  }
}
