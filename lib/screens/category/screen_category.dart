import 'package:flutter/material.dart';
import 'package:moneymanager/screens/category/expense_category_list.dart';
import 'package:moneymanager/screens/category/income_category_list.dart';

class Screencategory extends StatefulWidget {
  const Screencategory({super.key});

  @override
  State<Screencategory> createState() => _ScreencategoryState();
}

class _ScreencategoryState extends State<Screencategory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.green[900],
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: [
            Tab(
              text: "INCOME",
            ),
            Tab(
              text: "EXPENSES",
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              Incomecategorylist(),
              Expensecategorylist(),
            ],
          ),
        )
      ],
    );
  }
}
