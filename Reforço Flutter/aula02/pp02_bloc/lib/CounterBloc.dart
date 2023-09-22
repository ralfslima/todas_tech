// counter_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pp02_bloc/CounterEvent.dart';
import 'package:pp02_bloc/CounterState.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0));

  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      yield CounterState(state.count + 1);
    } else if (event is DecrementEvent) {
      yield CounterState(state.count - 1);
    }
  }
}
