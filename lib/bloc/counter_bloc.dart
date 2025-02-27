import 'package:counter/bloc/counter_event.dart';
import 'package:counter/bloc/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterStates> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncrementEvent>(
      (event, emit) => emit(
        CounterIncrement(state.counter + 1),
      ),
    );
    on<CounterDecrementEvent>(
      (event, emit) => emit(
        CounterIncrement(state.counter - 1),
      ),
    );
    on<CounterMultipleEvent>(
      (event, emit) => emit(
        CounterIncrement(
          (state.counter * state.counter),
        ),
      ),
    );
    on<CounterResetEvent>(
      (event, emit) => emit(
        CounterIncrement(
          (state.counter = 0),
        ),
      ),
    );
  }
}
