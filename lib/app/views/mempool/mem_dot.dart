
import 'package:stagexl/stagexl.dart';

import 'package:nav_visualizer/app_config.dart';
import 'dart:math';

class MemDot extends DisplayObjectContainer {

  Juggler juggler;
  Tween t;
  Shape dot;

  MemDot(this.juggler) {

    createMemDot();

  }

  createMemDot() {

    Random rnd = new Random();

    int x = rnd.nextInt(stageWidth);
    int y = rnd.nextInt(stageWidth);


    dot = new Shape();
    dot.graphics.circle(0, 0, 10);
    dot.graphics.fillColor(Color.LightSlateGray);

    dot.x = x;
    dot.y = y;
    dot.alpha = 0;

    this.addChild(dot);

    moveMemDot();

  }

  moveMemDot() {

    Random rnd = new Random();
    int time =  rnd.nextInt(5);

    t = new Tween(dot, time, Transition.easeInOutQuadratic);
    t.animate.x.to(stageWidth/2);
    t.animate.y.to(stageHeight/2);
    t.animate.alpha.to(1);


    t.onComplete = () => destroyMemDot();

    Juggler j = new Juggler();
    j.add(t);

    juggler.add(j);

  }
  
  destroyMemDot() {

    print("COMPLETE");
    this.removeChild(dot);
    dot = null;
    t = null;
    createMemDot();

  }


}