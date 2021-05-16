import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_fuctions/constans/enums.dart';
import 'package:bloc_fuctions/logic/cubit/internet_cubit.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  final InternetCubit internetCubit;
  StreamSubscription internetStreamSubscription;

  CounterCubit({@required this.internetCubit})
      : super(CounterState(counterValue: 0, wasIncremented: false)) {
    internetStreamSubscription = internetCubit.listen((InternetState) {
      if (InternetState is InternetConnected &&
          InternetState.connectionType == ConnectionType.Wifi) {
        incremnet();
      } else if (InternetState is InternetConnected &&
          InternetState.connectionType == ConnectionType.Mobile) {
        decrement();
      }
    });
  }

  @override
  Future<void> close() {
    internetStreamSubscription.cancel();
    return super.close();
  }

  void incremnet() => emit(
      CounterState(counterValue: state.counterValue + 1, wasIncremented: true));

  void decrement() => emit(CounterState(
      counterValue: state.counterValue - 1, wasIncremented: false));
}
