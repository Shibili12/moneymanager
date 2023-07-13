import 'package:flutter/material.dart';

class Expensecategorylist extends StatelessWidget {
  const Expensecategorylist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return Card(
          child: ListTile(
              title: Text("expense category $index"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete))),
        );
      },
      separatorBuilder: (ctx, index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemCount: 100,
    );
  }
}
