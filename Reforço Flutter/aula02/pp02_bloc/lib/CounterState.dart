// counter_state.dart
// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  int count;

  CounterState(this.count);

  @override
  List<Object> get props => [count];
}
