import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _color1 = true;
  var _color2 = true;
  var _color3 = true;
  var _color4 = true;
  var _color5 = true;
  var _color6 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, //white color background
        leading: IconButton(
          icon: ImageIcon(
            AssetImage("lib/Assets/img.png"),
            color: Colors.black,
            size: 18,
          ),
          onPressed: () {
            exit(0);
          },
        ), //Back Arrow
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
            child: const Text(
              'Write your reviews',
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 0, 0),
            child: Text(
              'Step 1/2',
              style: TextStyle(
                fontFamily: 'general-sans',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF713100),
              ),
            ),
          ),
          Row(
            children:  [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16,8,4,0),
                  child: Container(
                    height: 4,
                    color: Color(0xFF713100),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4,8,16,0),
                  child: Container(
                    height: 4,
                    color: Color(0xFFF5F5F5),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 0, 0),
            child: Text(
              'Select the space you’re facing problem in your city.',
              style: TextStyle(
                fontFamily: 'general-sans',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(23, 24, 0, 0),
            child: Text(
              'Shops',
              style: TextStyle(
                fontFamily: 'general-sans',
                fontWeight: FontWeight.w500,
                color: Color(0xFF676767),
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: _color1 ? Colors.white : Color(0xFF713100),
                child: ImageIcon(
                  AssetImage("lib/Assets/img_1.png"),
                  color: _color1 ? Colors.black : Colors.white,
                  size: 24,
                ),
              ),
              title: Text(
                'Electrical Shops',
                style: TextStyle(
                  fontFamily: 'general-sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: _color1 ? Colors.black : Color(0xFF713100),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: BorderSide(
                  color: _color1 ? Color(0xFFC5C5D1) : Color(0xFF713100),
                  width: _color1 ? 1 : 2,
                ),
              ),
              tileColor: _color1 ? Colors.white : Color(0xFFFFE8D7),
              selectedTileColor: Color(0xFF713100),
              onTap: () {
                setState(() {
                  _color6 = true;
                  _color5 = true;
                  _color4 = true;
                  _color2 = true;
                  _color3 = true;
                  _color1 = !_color1;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: _color2 ? Colors.white : Color(0xFF713100),
                child: ImageIcon(
                  AssetImage("lib/Assets/img_2.png"),
                  color: _color2 ? Colors.black : Colors.white,
                  size: 24,
                ),
              ),
              title: Text(
                'Books Shop',
                style: TextStyle(
                  fontFamily: 'general-sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: _color2 ? Colors.black : Color(0xFF713100),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: BorderSide(
                  color: _color2 ? Color(0xFFC5C5D1) : Color(0xFF713100),
                  width: _color2 ? 1 : 2,
                ),
              ),
              tileColor: _color2 ? Colors.white : Color(0xFFFFE8D7),
              selectedTileColor: Color(0xFF713100),
              onTap: () {
                setState(() {
                  _color6 = true;
                  _color5 = true;
                  _color4 = true;
                  _color1 = true;
                  _color3 = true;
                  _color2 = !_color2;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: _color3 ? Colors.white : Color(0xFF713100),
                child: ImageIcon(
                  AssetImage("lib/Assets/img_3.png"),
                  color: _color3 ? Colors.black : Colors.white,
                  size: 24,
                ),
              ),
              title: Text(
                'Hardware Shops',
                style: TextStyle(
                  fontFamily: 'general-sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: _color3 ? Colors.black : Color(0xFF713100),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: BorderSide(
                  color: _color3 ? Color(0xFFC5C5D1) : Color(0xFF713100),
                  width: _color3 ? 1 : 2,
                ),
              ),
              tileColor: _color3 ? Colors.white : Color(0xFFFFE8D7),
              selectedTileColor: Color(0xFF713100),
              onTap: () {
                setState(() {
                  _color6 = true;
                  _color5 = true;
                  _color4 = true;
                  _color2 = true;
                  _color1 = true;
                  _color3 = !_color3;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(23, 16, 0, 0),
            child: Text(
              'Food Area',
              style: TextStyle(
                fontFamily: 'general-sans',
                fontWeight: FontWeight.w500,
                color: Color(0xFF676767),
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: _color4 ? Colors.white : Color(0xFF713100),
                child: ImageIcon(
                  AssetImage("lib/Assets/img_4.png"),
                  color: _color4 ? Colors.black : Colors.white,
                  size: 24,
                ),
              ),
              title: Text(
                'Canteens',
                style: TextStyle(
                  fontFamily: 'general-sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: _color4 ? Colors.black : Color(0xFF713100),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: BorderSide(
                  color: _color4 ? Color(0xFFC5C5D1) : Color(0xFF713100),
                  width: _color4 ? 1 : 2,
                ),
              ),
              tileColor: _color4 ? Colors.white : Color(0xFFFFE8D7),
              selectedTileColor: Color(0xFF713100),
              onTap: () {
                setState(() {
                  _color6 = true;
                  _color5 = true;
                  _color1 = true;
                  _color2 = true;
                  _color3 = true;
                  _color4 = !_color4;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: _color5 ? Colors.white : Color(0xFF713100),
                child: ImageIcon(
                  AssetImage("lib/Assets/img_5.png"),
                  color: _color5 ? Colors.black : Colors.white,
                  size: 24,
                ),
              ),
              title: Text(
                'Juice Corner',
                style: TextStyle(
                  fontFamily: 'general-sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: _color5 ? Colors.black : Color(0xFF713100),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: BorderSide(
                  color: _color5 ? Color(0xFFC5C5D1) : Color(0xFF713100),
                  width: _color5 ? 1 : 2,
                ),
              ),
              tileColor: _color5 ? Colors.white : Color(0xFFFFE8D7),
              selectedTileColor: Color(0xFF713100),
              onTap: () {
                setState(() {
                  _color6 = true;
                  _color1 = true;
                  _color4 = true;
                  _color2 = true;
                  _color3 = true;
                  _color5 = !_color5;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: _color6 ? Colors.white : Color(0xFF713100),
                child: ImageIcon(
                  AssetImage("lib/Assets/img_6.png"),
                  color: _color6 ? Colors.black : Colors.white,
                  size: 24,
                ),
              ),
              title: Text(
                'Restaurants',
                style: TextStyle(
                  fontFamily: 'general-sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: _color6 ? Colors.black : Color(0xFF713100),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: BorderSide(
                  color: _color6 ? Color(0xFFC5C5D1) : Color(0xFF713100),
                  width: _color6 ? 1 : 2,
                ),
              ),
              tileColor: _color6 ? Colors.white : Color(0xFFFFE8D7),
              selectedTileColor: Color(0xFF713100),
              onTap: () {
                setState(() {
                  _color1 = true;
                  _color5 = true;
                  _color4 = true;
                  _color2 = true;
                  _color3 = true;
                  _color6 = !_color6;
                });
              },
            ),
          ),
          Container(
            height: 300,
            color: Colors.white,
          )
        ],
      ),
      bottomSheet: Container(
        width: 1000,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
            child: Container(
              alignment: Alignment(0, 0),
              height: 54,
              width: 358,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9999),
                color: Color(0xFF713100),
              ),
              child:Text(
                  'Next',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Color(0xFFC5C5D1)),
            left: BorderSide(color: Colors.transparent),
            right: BorderSide(color: Colors.transparent),
            bottom: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  String? _Complain_title;
  String? _Complain_description;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      title: "step2/2",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white, //white color background
          leading: IconButton(
            icon: ImageIcon(
              AssetImage("lib/Assets/img.png"),
              color: Colors.black,
              size: 18,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ), //Back Arrow
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
              child: const Text(
                'Write your reviews',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ), //Write your reviews text
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 0, 0),
              child: Text(
                'Step 2/2',
                style: TextStyle(
                  fontFamily: 'general-sans',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF713100),
                ),
              ),
            ),
            Row(
              children:  [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16,8,4,0),
                    child: Container(
                      height: 4,
                      color: Color(0xFF713100),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(4,8,16,0),
                    child: Container(
                      height: 4,
                      color: Color(0xFF713100),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 0, 0),
              child: Text(
                'Give info about the issue you\'re facing',
                style: TextStyle(
                  fontFamily: 'general-sans',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 24, 0, 0),
              child: Text(
                'Short Title',
                style: TextStyle(
                  fontFamily: 'general-sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
              child: TextField(
                maxLines: null,
                minLines: 2,
                onSubmitted: (String str) {
                  _Complain_title = str;
                },
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.done,
                style: TextStyle(
                  fontFamily: 'general-sans',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFC5C5D1), width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFC5C5D1), width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: 'e.g. No one giving Luxor pens',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontFamily: 'general-sans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC5C5D1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 0, 0),
              child: Text(
                'Briefly explain your issue',
                style: TextStyle(
                  fontFamily: 'general-sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
              child: TextField(
                maxLines: null,
                minLines: 5,
                onSubmitted: (String str) {
                  _Complain_description = str;
                },
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.done,
                style: TextStyle(
                  fontFamily: 'general-sans',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFC5C5D1), width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFC5C5D1), width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText:
                      'Tell us exactly what’s wrong so it can be fixed faster.',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontFamily: 'general-sans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC5C5D1),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16,16,0,0),
                  child: ImageIcon(
                    AssetImage("lib/Assets/img_7.png"),
                    color: Color(0xFF713100),
                    size: 24,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,16,0,0),
                  child: Text(
                    'Add Photos',
                    style: TextStyle(
                      fontFamily: 'general-sans',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF713100),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 300,
              color: Colors.white,
            )
          ],
        ),
        bottomSheet: Container(
          width: 4300,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              onTap: () {exit(0);},
              child: Container(
                alignment: Alignment(0, 0),
                height: 54,
                width: 358,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9999),
                  color: Color(0xFF713100),
                ),
                child: Text(
                    'Submit Complain',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: Color(0xFFC5C5D1)),
              left: BorderSide(color: Colors.transparent),
              right: BorderSide(color: Colors.transparent),
              bottom: BorderSide(color: Colors.transparent),
            ),
          ),
        ),
      ),
    );
  }
}
