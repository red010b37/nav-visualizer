
import 'package:nav_visualizer/core/mvc/model.dart';

class DaemonRPCModel implements Model {

  String name = "DaemonRPCModel";

  DaemonRPCModel(): super();


  @override
  onRegister() {
    print("${name} registered");

    //notificationStream.listen((Notification n) => handelStream(n) );

  }



}