import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hro.dart';
import 'package:csv/csv.dart';

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
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: FirstPage());
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<List<dynamic>> _data = [];
  List<Hro> heroes = [];

  void loadCSV() async {
    final _rawData = await rootBundle.loadString("asset/heroes.csv");
    List<List<dynamic>> _listData = CsvToListConverter().convert(_rawData);
    setState(() {
      _data = _listData;
      for(List<dynamic> p in _data){
        if (p[0] != 'no') {
          heroes.add(Hro(p[1], p[2]));
        }
      }
    });
  }

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
                  width: double.infinity,
                  color: Colors.green,
                  child: ListView.builder(
                      itemCount: heroes.length,
                      itemBuilder: (_, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              color: Colors.grey,
                              width: double.infinity,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              child: Row(children: [
                                Container(
                                  width: 200,
                                  child: Row(
                                    children: [
                                      Image.asset(heroes[index].profildir),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(heroes[index].name),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Text("Show")),
                                  padding: EdgeInsets.symmetric(horizontal: 25),
                                )
                              ]),
                            ),
                          ],
                        );
                      }))
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
              loadCSV();
            });
          },
        ));
  }
}
