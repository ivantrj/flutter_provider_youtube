import 'package:flutter/material.dart';
import 'package:flutter_provider_youtube/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Center(
        child: Text("${context.watch<Counter>().count}"),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<Counter>().decrement(),
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().reset(),
            child: Icon(Icons.restore),
          ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().increment(),
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
