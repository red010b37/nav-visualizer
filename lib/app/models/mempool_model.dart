
import 'dart:core';
import 'dart:async';
import 'package:nav_visualizer/core/mvc/model.dart';
import 'package:nav_visualizer/app/notifications.dart';

class MempoolModel implements Model {

  String name = "DaemonRPCModel";





  MempoolModel(): super();


  @override
  onRegister() {
    print("${name} registered");

    //notificationStream.listen((Notification n) => handelStream(n) );

    _memPoolCountChecker();
    _startTimeout();
  }


  _memPoolCountChecker() {


  }



  _startTimeout() {

    new Timer(new Duration(seconds: 5), handleTimeout);
  }

  void handleTimeout() {  // callback function
    print("handel");

  }






}