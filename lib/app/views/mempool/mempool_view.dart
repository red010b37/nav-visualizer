
import 'package:stagexl/stagexl.dart';
import 'package:nav_visualizer/app_config.dart';
import 'dart:math';

class MempoolView extends DisplayObjectContainer {

  Juggler _masterJuggler;

  MempoolView(this._masterJuggler) {

    init();

  }


  init() {

    Random rnd = new Random();

    int x = rnd.nextInt(stageWidth);
    int y = rnd.nextInt(stageWidth);

    var shape = new Shape();
    shape.graphics.circle(0, 0, 10);
    shape.graphics.fillColor(Color.Red);

    shape.x = x;
    shape.y = y;
    this.addChild(shape);


    Tween t = new Tween(shape, 3, Transition.easeInOutQuadratic);
    t.animate.x.to(stageWidth/2);
    t.animate.y.to(stageHeight/2);

    Juggler j = new Juggler();
    j.add(t);


    _masterJuggler.add(j);

  }

}