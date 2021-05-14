import 'package:bloc_fuctions/cubit/counter_cubit.dart';
import 'package:test/test.dart';

void main(List<String> args) {
  group('CounterCubit', () {
    CounterCubit counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });
    tearDown(() {
      counterCubit.close();
    });

    test(
        'the inital state for the CounterCubit is CounterState(counterValue:0)',
        () {
      expect(counterCubit.state,
          CounterState(counterValue: null, wasIncremented: false));
    });
  });
}
