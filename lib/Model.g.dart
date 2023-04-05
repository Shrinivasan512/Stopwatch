// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Model on _TimerModelBase, Store {
  late final _$dataAtom = Atom(name: '_TimerModelBase.data', context: context);

  @override
  int get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(int value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$countAtom =
      Atom(name: '_TimerModelBase.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$statAtom = Atom(name: '_TimerModelBase.stat', context: context);

  @override
  String get stat {
    _$statAtom.reportRead();
    return super.stat;
  }

  @override
  set stat(String value) {
    _$statAtom.reportWrite(value, super.stat, () {
      super.stat = value;
    });
  }

  late final _$counterAtom =
      Atom(name: '_TimerModelBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$_TimerModelBaseActionController =
      ActionController(name: '_TimerModelBase', context: context);

  @override
  dynamic setdata({required int data}) {
    final _$actionInfo = _$_TimerModelBaseActionController.startAction(
        name: '_TimerModelBase.setdata');
    try {
      return super.setdata(data: data);
    } finally {
      _$_TimerModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setcount({required int count}) {
    final _$actionInfo = _$_TimerModelBaseActionController.startAction(
        name: '_TimerModelBase.setcount');
    try {
      return super.setcount(count: count);
    } finally {
      _$_TimerModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setStatus({required String stat}) {
    final _$actionInfo = _$_TimerModelBaseActionController.startAction(
        name: '_TimerModelBase.setStatus');
    try {
      return super.setStatus(stat: stat);
    } finally {
      _$_TimerModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data},
count: ${count},
stat: ${stat},
counter: ${counter}
    ''';
  }
}
