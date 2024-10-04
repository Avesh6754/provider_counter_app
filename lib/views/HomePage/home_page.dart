import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/provider/home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          'Counter App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          Provider.of<HomeProvider>(context, listen: true).counter.toString(),
          style: const TextStyle(fontSize: 70, fontWeight: FontWeight.w400),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Provider.of<HomeProvider>(context, listen: false).increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              if (Provider.of<HomeProvider>(context, listen: false).counter > 0) {
                Provider.of<HomeProvider>(context, listen: false).decrement();
              }
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
