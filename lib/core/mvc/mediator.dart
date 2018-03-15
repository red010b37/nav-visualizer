

import 'package:stagexl/stagexl.dart';


class Mediator
{

  String name = "";

  DisplayObjectContainer _viewContainer;
  Juggler stageJuggler;

  Mediator(this._viewContainer, this.stageJuggler)
  {
    onRegister();
  }


  onRegister() {}



  DisplayObjectContainer get viewContainer => _viewContainer;

  set viewContainer(DisplayObjectContainer value) {
    _viewContainer = value;
  }

}