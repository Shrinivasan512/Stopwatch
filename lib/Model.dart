import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
part 'Model.g.dart';

class Model = _TimerModelBase with _$Model;

abstract class _TimerModelBase with Store {
  StreamController flowData = StreamController.broadcast();

  Timer? timer;
  Timer? minutes;

  @observable
  int data = 0;

  @observable
  int count = 0;

  @observable
  String stat = "Start";

  @observable
  int counter = 0;

  @action
  setdata({required int data}) => this.data = data;
  
  @action
  setcount({required int count}) => this.count = count;

  @action
  setStatus({required String stat})=>this.stat=stat;
}
