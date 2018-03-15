

import 'package:stagexl/stagexl.dart';


class Mediator
{

  String name = "";

  DisplayObjectContainer _viewContainer;

  Mediator(this._viewContainer)
  {
    onRegister();
  }


  onRegister() {}



  DisplayObjectContainer get viewContainer => _viewContainer;
  set viewContainer(DisplayObjectContainer value) {
    _viewContainer = value;
  }

}