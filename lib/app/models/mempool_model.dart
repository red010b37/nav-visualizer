
import 'dart:core';
import 'dart:math';
import 'dart:async';
import 'package:nav_visualizer/core/mvc/model.dart';
import 'package:nav_visualizer/app/notifications.dart';

class MempoolModel extends Model {

  String name = "MempoolModel";
  int _preCount = 0;
  int _currentCount = 0;

  MempoolModel(): super();


  @override
  onRegister() {
    print("${name} registered");

    //notificationStream.listen((Notification n) => handelStream(n) );

    _memPoolCountChecker();
    _startTimeout();

  }


  _memPoolCountChecker() {

    // TODO: Check Mempool
    _preCount = _currentCount;
    _currentCount = new Random().nextInt(5);

    int n = _currentCount - _preCount;


    // tell
    if (n > 0) {
      Notification note = new Notification(AppNotifications.newMempoolTransactions, data: n);
      notificationStreamController.add(note);
    }

  }



  _startTimeout() {

    new Timer.periodic(new Duration(seconds: 1), handleTimeout);
  }

  void handleTimeout(Timer timer) {  // callback function
    _memPoolCountChecker();
  }






}