import 'dart:async';
import 'package:mobx/mobx.dart';
import 'package:timer/Model.dart';
import 'Model.dart';

class Vm extends Model {

  void minute() {
    flowData.add(count);
    count++;
    if (count == 99) {
      count = 0;
    }
  }

  void countdown() {
    if (stat == "Start") {
      setStatus(stat: "Pause");
      // stat = "Pause";
      timer = Timer.periodic(Duration(seconds: 1), (timer) {
        flowData.add(data);
        data++;
        if (data == 60) {
          minute();
          data = 0;
        }
      });
    } 
    else {
      setStatus(stat: "Start");
      // stat = "Start";
      stopcountdown();
    }
  }
  

  void stopcountdown() {
    timer!.cancel();
  }

  // void resetcountdown() {
  //   data = 0;
  //   count = 0;
  // }

  // void main() {
  //   Vm instance = Vm();
  //   instance.flowData.stream.listen((event) {
  //     print("the data event $event");
  //   });
  //   instance.minute();
  //   instance.countdown();
  //   //instance.resetcountdown();
  // }
}
