import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_fuctions/constans/enums.dart';
import 'package:bloc_fuctions/logic/cubit/internet_cubit.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
 CounterCubit() : super(CounterState(counterValue: 0));

  void incremnet() => emit(
      CounterState(counterValue: state.counterValue + 1, wasIncremented: true));

  void decrement() => emit(CounterState(
      counterValue: state.counterValue - 1, wasIncremented: false));
}
