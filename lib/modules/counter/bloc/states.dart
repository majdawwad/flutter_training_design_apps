abstract class CounterStates {}

class CounterInitialState extends CounterStates {}

class CounterPlusState extends CounterStates {
  final int counter;

  CounterPlusState(this.counter);
}

class CounterMunisState extends CounterStates {
  final int counter;

  CounterMunisState(this.counter);
}
