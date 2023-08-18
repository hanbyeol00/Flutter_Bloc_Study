import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends HydratedBloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<CounterIncrement>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });
    on<CounterDecrement>((event, emit) {
      emit(state.copyWith(count: state.count - 1));
    });
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    return CounterState(count: json['count'] as int);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    return {'count': state.count};
  }
}
