import 'package:counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_event.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${context.watch<CounterBloc>().state.counter}",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () =>
                context.read<CounterBloc>().add(CounterDecrementEvent()),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () =>
                context.read<CounterBloc>().add(CounterIncrementEvent()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () =>
                context.read<CounterBloc>().add(CounterMultipleEvent()),
            tooltip: 'Multiply',
            child: const Icon(Icons.close),
          ),
          FloatingActionButton(
            onPressed: () =>
                context.read<CounterBloc>().add(CounterResetEvent()),
            tooltip: 'Multiply',
            child: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}
