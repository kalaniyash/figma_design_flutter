import 'package:flutter/material.dart';
import 'card_screen.dart';

class CardTabbarScreen extends StatefulWidget {
  const CardTabbarScreen({super.key});

  @override
  State<CardTabbarScreen> createState() => _CardTabbarScreenState();
}

class _CardTabbarScreenState extends State<CardTabbarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "List",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search_rounded,
                size: 30,
              ),
            )
          ],
          bottom: TabBar(
            indicator: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.blue.shade900,
              width: 3,
            ))),
            indicatorWeight: 4.0,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black,
            // Change the color of the selected tab text
            unselectedLabelColor: Colors.grey,
            // Change the color of unselected tab text
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            // Change the style of the selected tab text
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
            // Change the style of unselected tab text

            tabs: [
              Tab(text: 'Lorem'),
              Tab(text: 'Lorem'),
              Tab(text: 'Lorem'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CardScreen(),
            // This is just a placeholder. You need to provide the actual content for each tab.
            Center(
              child: Text(
                "Second Lorem",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                "third Lorem",
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
