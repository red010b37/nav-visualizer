
import 'dart:async';

enum AppNotifications {

  showMempoolScreen

}


StreamController<Notification> notificationStreamController = new StreamController<Notification>();
Stream<Notification> notificationStream = notificationStreamController.stream.asBroadcastStream();

class Notification {

  AppNotifications note;
  var data;

  Notification(this.note, {this.data: null});

}