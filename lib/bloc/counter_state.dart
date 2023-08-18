part of 'counter_bloc.dart';

abstract class CounterAppState extends Equatable {
  final int count;
  const CounterAppState({
    this.count = 0,
  });

  @override
  List<Object> get props => [count];
}

class CounterState extends CounterAppState {
  const CounterState({
    int count = 0,
  }) : super(count: count);

  factory CounterState.fromJson(Map<String, dynamic> json) =>
      CounterState(count: json['count'] as int);

  Map<String, dynamic> toJson() => {'count': count};

  CounterState copyWith({
    int? count,
  }) {
    return CounterState(
      count: count ?? this.count,
    );
  }
}
