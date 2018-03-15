
import 'package:stagexl/stagexl.dart';
import 'package:nav_visualizer/app/views/mempool/mem_dot.dart';
import 'dart:math';

class MempoolView extends DisplayObjectContainer {

  Juggler _masterJuggler;
  Juggler _viewJuggler = new Juggler();

  MempoolView(this._masterJuggler) {

    init();

  }


  init() {
    
    _masterJuggler.add(_viewJuggler);

    for(int i = 0; i < 100; i++) {

      this.addChild(new MemDot(_viewJuggler));

    }


  }

}