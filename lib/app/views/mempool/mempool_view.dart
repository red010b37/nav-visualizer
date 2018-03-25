
import 'package:stagexl/stagexl.dart';
import 'package:nav_visualizer/app/views/mempool/mem_dot.dart';

class MempoolView extends DisplayObjectContainer {

  Juggler _masterJuggler;
  Juggler _viewJuggler = new Juggler();

  MempoolView(this._masterJuggler) {

    init();

  }


  init() {
    
    _masterJuggler.add(_viewJuggler);

  }


  addDots (int n) {
    for (int i = 0; i < n; i++) {
      this.addChild(new MemDot(_viewJuggler));
    }
  }




}