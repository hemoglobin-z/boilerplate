import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          title: Text(
            'SODA',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ],
            )
          ],
          centerTitle: false,
          backgroundColor: Color(0xff182949),
          foregroundColor: Colors.white,
        ),
        drawer: Drawertype(),
        body: Container(
          margin: EdgeInsets.fromLTRB(13, 11, 13, 11),
          child: Column(
            children: [
              Card(
                elevation: 0,
                color: Colors.white,
                shape: Border.all(width: 0.0),
                child: ListTile(
                  leading: Icon(Icons.airplay),
                  title: Text(
                    'This is List tile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'List tile 1',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Card(
                elevation: 0,
                color: Colors.white,
                shape: Border.all(width: 0.0),
                child: ListTile(
                  leading: Icon(Icons.airplay),
                  title: Text(
                    'This is List tile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'List tile 2',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Card(
                elevation: 0,
                color: Colors.white,
                shape: Border.all(width: 0.0),
                child: ListTile(
                  leading: Icon(Icons.airplay),
                  title: Text(
                    'This is List tile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'List tile 3',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'TEXT BUTTON',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.settings),
                            color: Colors.white,
                            style: IconButton.styleFrom(
                              backgroundColor: Color(0xff182949)
                            ),
                          ),
                        
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: OutlinedButton(
                          onPressed: () {},
                          
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Color(0xffFFE8E8) ,
                            side: BorderSide(
                              color: Color(0xffFFE8E8),
                            ),
                          ),
                          
                          child: Text('Outlined Button'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              color: Colors.black,
              indent: 13,
              endIndent: 13,
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Text(
                'Copyright 2022 SODA All rights reserved.',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: CircleBorder(),
          backgroundColor: Color(0xff182949),
          foregroundColor: Colors.white,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class Drawertype extends StatelessWidget {
  const Drawertype({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xff182949)),
            child: Text(
              'SODA',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(
              'Icon : favorite',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
