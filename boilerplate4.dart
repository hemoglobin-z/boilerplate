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
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: const Text(
          'SODA',
          style: TextStyle(
              fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w500),
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
        backgroundColor: const Color(0xff182949),
        foregroundColor: Colors.white,
      ),
      drawer: const Drawertype(),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 15, 0, 0),
          child: Row(
            children: [
              Text(
                'DAY 8',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 7, 10, 3),
          child: Card(
            color: Colors.white,
            shape: Border.all(width: 0),
            child: Column(
              children: [
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(3, 10, 10, 15),
                    child: Text(
                      'Boilerplate 4',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Text(
                      ' 어느덧 SODA 캠프 8일차가 되었네요! \n 여기까지 달려오시느라 수고 많으셨어요 :) \n\n 아래 있는 CANCEL과 SUBMIT은 버튼입니다 !!'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('CANCEL'),
                    ),
                    TextButton(onPressed: () {}, child: Text('SUBMIT'))
                  ],
                )
              ],
            ),
          ),
        ),
        const ChoiceChipFunc(),
        SizedBox(
          height: 135,
        ),
        Theme(data: ThemeData(tooltipTheme: const TooltipThemeData(preferBelow: false)), child: const TooltipFunc(title: 'Tooltip',)),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              color: Colors.black,
              indent: 13,
              endIndent: 13,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 5, 13, 13),
              child: Text(
                'Copyright 2022 SODA All rights reserved.',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ]),
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

class ChoiceChipFunc extends StatefulWidget {
  const ChoiceChipFunc({super.key});

  @override
  State<ChoiceChipFunc> createState() => _ChoiceChipFuncState();
}

class _ChoiceChipFuncState extends State<ChoiceChipFunc> {
  int selectedChoiceIndex = 0;

  void handleChoiceSelected(int index) {
    setState(() {
      selectedChoiceIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 12),
        ChoiceChip(
          label: Text(
            'SODA',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          selected: selectedChoiceIndex == 0,
          onSelected: (selected) {
            handleChoiceSelected(0);
          },
          showCheckmark: false,
          backgroundColor: Color(0xffEDEDED),
          selectedColor: Color(0xff182949),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          labelStyle: TextStyle(
              color: selectedChoiceIndex == 0 ? Colors.white : Colors.black),
        ),
        SizedBox(width: 8),
        ChoiceChip(
          label: Text(
            'CAMP',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          selected: selectedChoiceIndex == 1,
          onSelected: (selected) {
            handleChoiceSelected(1);
          },
          showCheckmark: false,
          backgroundColor: Color(0xffEDEDED),
          selectedColor: Color(0xff182949),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          labelStyle: TextStyle(
              color: selectedChoiceIndex == 1 ? Colors.white : Colors.black),
        ),
        SizedBox(width: 8),
        ChoiceChip(
          label: Text(
            'FUN',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          selected: selectedChoiceIndex == 2,
          onSelected: (selected) {
            handleChoiceSelected(2);
          },
          showCheckmark: false,
          backgroundColor: Color(0xffEDEDED),
          selectedColor: Color(0xff182949),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          labelStyle: TextStyle(
              color: selectedChoiceIndex == 2 ? Colors.white : Colors.black),
        ),
        SizedBox(width: 8),
        ChoiceChip(
          label: Text(
            'FLUTTER',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          selected: selectedChoiceIndex == 3,
          onSelected: (selected) {
            handleChoiceSelected(3);
          },
          showCheckmark: false,
          backgroundColor: Color(0xffEDEDED),
          selectedColor: Color(0xff182949),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          labelStyle: TextStyle(
              color: selectedChoiceIndex == 3 ? Colors.white : Colors.black),
        ),
      ],
    );
  }
}


class TooltipFunc extends StatelessWidget {
  const TooltipFunc({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<TooltipState> tooltipKey = GlobalKey<TooltipState>();
    return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 19, 19),
                  child: Tooltip(
                    key: tooltipKey,
                    message: 'Tooltip',
                    triggerMode: TooltipTriggerMode.manual,
                    showDuration: const Duration(seconds: 1),
                    child: FloatingActionButton(
                      onPressed: () {
                        // Show the tooltip programmatically
                        tooltipKey.currentState?.ensureTooltipVisible();
                      },
                      shape: const CircleBorder(),
                      backgroundColor: const Color(0xff182949),
                      foregroundColor: Colors.white,
                      child: const Icon(Icons.add),
                    ),
                  ),
                ),
              ],
            );
          
  }
}