abstract class CounterStates {
  int counter;
  CounterStates(this.counter);
}

class CounterInitial extends CounterStates {
  CounterInitial() : super(0);
}

class CounterIncrement extends CounterStates {
  CounterIncrement(int counter) : super(counter);
}
