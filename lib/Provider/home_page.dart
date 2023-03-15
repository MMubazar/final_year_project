import 'dart:async';
import 'package:final_year_project/Provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    final countProvider = Provider.of<Count>(context, listen: false);
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) {
      countProvider.setCount();
    });
  }

  Widget build(BuildContext context) {
    final countProvider = Provider.of<Count>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Providers"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<Count>(
          builder: (BuildContext context, value, child) {
            return Text(
              value.count.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
            );
          },
        ),
      ),
    );
  }
}
