import 'package:flutter/material.dart';

class Screentransactions extends StatelessWidget {
  const Screentransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 0,
          child: ListTile(
            leading: CircleAvatar(
                radius: 50,
                child: Text(
                  "july 12",
                  textAlign: TextAlign.center,
                )),
            title: Text("RS 1000$index"),
            subtitle: Text("travel"),
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return const SizedBox(
          height: 5,
        );
      },
      itemCount: 10,
    );
  }
}
