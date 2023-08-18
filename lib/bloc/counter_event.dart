part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class CounterIncrement extends CounterEvent {
  const CounterIncrement();
}

class CounterDecrement extends CounterEvent {
  const CounterDecrement();
}

class CounterAppStarted extends CounterEvent {
  const CounterAppStarted();
}
