// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Counter on _Counter, Store {
  late final _$valueAtom = Atom(name: '_Counter.value', context: context);

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$addValueAtom = Atom(name: '_Counter.addValue', context: context);

  @override
  int get addValue {
    _$addValueAtom.reportRead();
    return super.addValue;
  }

  @override
  set addValue(int value) {
    _$addValueAtom.reportWrite(value, super.addValue, () {
      super.addValue = value;
    });
  }

  late final _$minusValueAtom =
      Atom(name: '_Counter.minusValue', context: context);

  @override
  int get minusValue {
    _$minusValueAtom.reportRead();
    return super.minusValue;
  }

  @override
  set minusValue(int value) {
    _$minusValueAtom.reportWrite(value, super.minusValue, () {
      super.minusValue = value;
    });
  }

  late final _$_CounterActionController =
      ActionController(name: '_Counter', context: context);

  @override
  void increment() {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.decrement');
    try {
      return super.decrement();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.reset');
    try {
      return super.reset();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
addValue: ${addValue},
minusValue: ${minusValue}
    ''';
  }
}
