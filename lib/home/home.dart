import 'package:flutter/material.dart';
import 'package:indian_cultures/home/home_item.dart';
import 'package:indian_cultures/home/home_item_model.dart';
import 'package:indian_cultures/home/navbar.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var homeItem = [
      Homedata(
          name: 'Uttar Pradesh',
          image: 'assets/images/welcome_festival.jpg',
          detail:
              ' Lorem ipsum dolor sit ametconsectetur adipiscing elit  Donec erat justo, dictum acodio sed.',
          faviorate: true),
      Homedata(
          name: 'Uttar Pradesh',
          image: 'assets/images/welcome_festival.jpg',
          detail: ' Lorem ipsum dolor sit amet'
              'consectetur adipiscing elit  Donec erat justo, dictum acodio sed.',
          faviorate: false),
      Homedata(
          name: 'Uttar Pradesh',
          image: 'assets/images/welcome_festival.jpg',
          detail: ' Lorem ipsum dolor sit amet'
              'consectetur adipiscing elit  Donec erat justo, dictum acodio sed.',
          faviorate: false),
      Homedata(
          name: 'Uttar Pradesh',
          image: 'assets/images/welcome_festival.jpg',
          detail: ' Lorem ipsum dolor sit amet'
              'consectetur adipiscing elit  Donec erat justo, dictum acodio sed.',
          faviorate: true),
      Homedata(
          name: 'Uttar Pradesh',
          image: 'assets/images/welcome_festival.jpg',
          detail: ' Lorem ipsum dolor sit amet'
              'consectetur adipiscing elit  Donec erat justo, dictum acodio sed.',
          faviorate: false),
      Homedata(
          name: 'Uttar Pradesh',
          image: 'assets/images/welcome_festival.jpg',
          detail: ' Lorem ipsum dolor sit amet'
              'consectetur adipiscing elit  Donec erat justo, dictum acodio sed.',
          faviorate: true),
    ];

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
          size: 30,
        ),
        title: Text(
          'States',
           style: TextStyle(
             color: Colors.black,
             fontSize: 24,
           ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.1,
                ),
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: homeItem.length,
                  itemBuilder: (context, index) {
                    return Homewidget(context, homeItem[index]);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
