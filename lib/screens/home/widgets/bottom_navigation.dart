import 'package:flutter/material.dart';
import 'package:moneymanager/screens/home/widgets/screen_home.dart';

class Moneybottomnavigation extends StatelessWidget {
  const Moneybottomnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Screenhome.selectedindexnotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
            selectedItemColor: Colors.green[900],
            unselectedItemColor: Colors.grey,
            currentIndex: updatedIndex,
            onTap: (newIndex) {
              Screenhome.selectedindexnotifier.value = newIndex;
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "transaction"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: "category"),
            ]);
      },
    );
  }
}
