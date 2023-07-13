import 'package:flutter/material.dart';
import 'package:moneymanager/screens/category/screen_category.dart';
import 'package:moneymanager/screens/home/widgets/bottom_navigation.dart';
import 'package:moneymanager/screens/transactions/screen_trnsaction.dart';

class Screenhome extends StatelessWidget {
  const Screenhome({super.key});

  static ValueNotifier<int> selectedindexnotifier = ValueNotifier(0);
  final _pages = const [
    Screentransactions(),
    Screencategory(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("MONEY MANAGER"),
        centerTitle: true,
      ),
      bottomNavigationBar: const Moneybottomnavigation(),
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: selectedindexnotifier,
              builder: (BuildContext context, int updatedIndex, _) {
                return _pages[updatedIndex];
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedindexnotifier.value == 0) {
            print("add transactions");
          } else {
            print("add category");
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
