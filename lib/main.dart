
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hro.dart';
import 'package:csv/csv.dart';
import 'asset.dart';

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

  List<Hro> heroes = [];



  bool isLoaded = false;
  @override
  Widget build(BuildContext context) {
  if(!isLoaded){
    isLoaded = true;
    Asset();
    heroes = Asset.heroes;
  }
    return Scaffold(
      appBar: AppBar(title: const Text('anjay')),
      body: Center(
          child: Container(
              width: double.infinity,
              color: Colors.black87,
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
                            SizedBox(
                              width: 225,
                              child: Row(
                                children: [
                                  Image.asset(heroes[index].profildir),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(heroes[index].name),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: ElevatedButton(
                                  onPressed: () {}, child: const Text("Details")),
                            )
                          ]),
                        ),
                      ],
                    );
                  }))),
    );
  }
}
