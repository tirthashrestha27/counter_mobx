import 'package:mobx/mobx.dart';

// Include generated file
part 'counter.g.dart';

// This is the class used by rest of your codebase
class Counter = _Counter with _$Counter;

// The store-class
abstract class _Counter with Store {
  @observable
  int value = 0;

  @observable
  int addValue = 0;

  @observable
  int minusValue = 0;

  @action
  void increment() {
    addValue++;
    value++;
  }

  @action
  void decrement() {
    value--;
    minusValue++;
  }

  @action
  void reset() {
    value = 0;
    addValue = 0;
    minusValue = 0;
  }
}
