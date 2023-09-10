import 'package:flutter/material.dart';
import 'hro.dart';
import 'asset.dart';
import 'heroPage.dart';

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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) {
          if (settings.name == "/second") {
            final args = settings.arguments;
            return PageRouteBuilder(
              settings: settings,
              pageBuilder: (_, __, ___) => HeroPage(args as Hro),
            );
          }
          return null;
        },
        routes: {
          "/first": (context) => const FirstPage(),
          //"/second": (context) => HeroPage(),
        },
        home: const FirstPage());
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late List<Hro> heroes;

  bool isLoaded = false;
  int heroSelected = 0;

  final Color cardsColor = Colors.blue;
  final Color backgroundColor = const Color.fromRGBO(0, 119, 182, 100);

  late Widget cards;

  _FirstPageState() {
    isLoaded = true;
    Asset();
    heroes = Asset.heroes;
    cards = getHeroesCard();
    // while(heroes.isEmpty){
    //   heroes = Asset.heroes;
    // }
  }

  Widget getHeroesCard() {
    return ListView.builder(
        itemCount: heroes.length,
        itemBuilder: (_, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: cardsColor,
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(children: [
                  SizedBox(
                    width: 225,
                    child: Row(
                      children: [
                        Image.asset(heroes[index].profileDir),
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
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            "/second",
                            arguments: heroes[index],
                          );
                        },
                        child: const Text("Details")),
                  )
                ]),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'), actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              cards = getHeroesCard();
            });
          },
        )
      ]),
      body: Center(
          child: Container(
        width: double.infinity,
        color: backgroundColor,
        child: cards,
      )),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.home),
                  Text('Home'),
                ],
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
