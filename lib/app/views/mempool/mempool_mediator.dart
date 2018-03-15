
import 'package:stagexl/stagexl.dart';
import 'package:nav_visualizer/core/mvc/mediator.dart';
import 'package:nav_visualizer/app/notifications.dart';
import 'package:nav_visualizer/app/views/mempool/mempool_view.dart';

class MempoolMediator extends Mediator {

  String name = 'MempoolMediator';

  MempoolView _view;


  MempoolMediator(DisplayObjectContainer app, Juggler stageJuggler): super(app, stageJuggler);

  @override
  onRegister() {
    print("${name} registered");

    notificationStream.listen((Notification n) => handelStream(n) );

  }


  handelStream(Notification n ) {

    switch(n.note) {

      case AppNotifications.showMempoolScreen:
        showScreen();
        break;

    }

  }


  showScreen() {
    if(_view == null) {
      _view = new MempoolView(this.stageJuggler);
      viewContainer.addChild(_view);
    }
  }

}


