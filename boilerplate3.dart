import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffffffff),
        appBar: AppBar(
          title: const Text(
            'SODA',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500),
          ),
          actions: const [SwitchWid()],
          centerTitle: false,
          backgroundColor: const Color(0xff182949),
          foregroundColor: Colors.white,
        ),
        drawer: const Drawertype(),
        body: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: TextFieldFunc(),
          ),
          Padding(
            padding: EdgeInsets.all(0.0),
            child: RadioFunc(),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: CheckboxFunc(),
          ),
          SizedBox(height: 10,),
          Padding(padding: const EdgeInsets.all(19),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('버튼을 눌러 날짜를 선택해주세요.'),
                DatePickerFunc(),
              ],
            ),
          ),
          SizedBox(height: 155,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 19, 19),
                child: FloatingActionButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: Text('+ 버튼을 누르셨습니다.',
                        ),
                        actions: [
                          TextButton(onPressed: () => Navigator.pop(context, '확인'),
                          child: const Text('확인'),)
                        ],
                      ),
                      );
                  },
                  shape: CircleBorder(),
                  backgroundColor: Color(0xff182949),
                  foregroundColor: Colors.white,
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
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

class SwitchWid extends StatefulWidget {
  const SwitchWid({super.key});

  @override
  State<SwitchWid> createState() => _SwitchWidState();
}

class _SwitchWidState extends State<SwitchWid> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      onChanged: (bool value) {
        setState(() {
          light = value;
          if (light) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('switch를 ON 하였습니다'),
                action: SnackBarAction(label: 'OK', onPressed: () {}),
              ),
            );
          }
        });
      },
    );
  }
}

class TextFieldFunc extends StatelessWidget {
  const TextFieldFunc({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Name',
          filled: true,
          fillColor: Color(0xffEDEDED),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

enum Gender { Male, Female }

class RadioFunc extends StatefulWidget {
  const RadioFunc({super.key});

  @override
  State<RadioFunc> createState() => _RadioFuncState();
}

class _RadioFuncState extends State<RadioFunc> {
  Gender? _gender = Gender.Male;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Row(
            children: [
              Radio(
                value: Gender.Male,
                groupValue: _gender,
                onChanged: (Gender? value) {
                  setState(() {
                    _gender = value;
                  });
                },
              ),
              Text('Male')
            ],
          ),
          SizedBox(
            width: 45,
          ),
          Row(
            children: [
              Radio(
                value: Gender.Female,
                groupValue: _gender,
                onChanged: (Gender? value) {
                  setState(() {
                    _gender = value;
                  });
                },
              ),
            ],
          ),
          Text('Female')
        ],
      ),
    );
  }
}

class CheckboxFunc extends StatefulWidget {
  const CheckboxFunc({super.key});

  @override
  State<CheckboxFunc> createState() => _CheckboxFuncState();
}

class _CheckboxFuncState extends State<CheckboxFunc> {
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Checkbox(
              value: isChecked1,
              onChanged: (bool? value) {
                setState(() {
                  isChecked1 = value;
                });
              }),
        ),
            Text('Desinger'),

            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Checkbox(
              value: isChecked2,
              onChanged: (bool? value) {
                setState(() {
                  isChecked2 = value;
                });
              }),
            ),
            Text('Developer')
      ],
    );
  }
}


class DatePickerFunc extends StatefulWidget {
  const DatePickerFunc({super.key});

  @override
  State<DatePickerFunc> createState() => _DatePickerFuncState();
}

class _DatePickerFuncState extends State<DatePickerFunc> {
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: () {
        showDatePicker(
        context: context,
        firstDate: DateTime(2001),
        lastDate: DateTime(2030),
      builder: (BuildContext context, Widget? child) {
        return Theme(data: ThemeData.dark(), child: child!);
      },
      ).then((pickedDate) {
          if (pickedDate != null && pickedDate != selectedDate) {
            setState(() {
              selectedDate = pickedDate;
            });
          }
        });
      
    },
    style: OutlinedButton.styleFrom(
      foregroundColor: Color(0xff4B6EB1),
      shape: BeveledRectangleBorder(),
      side: BorderSide(color: Color(0xffE8E8E8),
      ),
    ),
    child:
    Text('Select Date'),
    
    );
  }
}