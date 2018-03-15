library nav_visualizer;


import 'package:stagexl/stagexl.dart';
import 'dart:math';
import 'package:nav_visualizer/core/mvc/mediator.dart';
import 'package:nav_visualizer/core/base/mediator_core.dart';

class ApplicationMediator
{

  DisplayObjectContainer _displayObject;
  Stage _stage;

  ApplicationMediator(this._stage) {

    _displayObject = new App();
    _stage.addChild(_displayObject);

    registerViews();
    registerControllers();
    registerModels();

    //test();
  }

  test() async {
    var resourceManager = new ResourceManager();
    resourceManager.addBitmapData("dart", "images/dart@1x.png");

    await resourceManager.load();

    var logoData = resourceManager.getBitmapData("dart");
    var logo = new Sprite();
    logo.addChild(new Bitmap(logoData));

    logo.pivotX = logoData.width / 2;
    logo.pivotY = logoData.height / 2;

    // Place it at top center.
    logo.x = 1280 / 2;
    logo.y = 0;

    _displayObject.addChild(logo);

    // And let it fall.
    var tween = _stage.juggler.addTween(logo, 3, Transition.easeOutBounce);
    tween.animate.y.to(800 / 2);

    // Add some interaction on mouse click.
    Tween rotation;
    logo.onMouseClick.listen((MouseEvent e) {
    // Don't run more rotations at the same time.
    if (rotation != null) return;
    rotation = _stage.juggler.addTween(logo, 0.5, Transition.easeInOutCubic);
    rotation.animate.rotation.by(2 * PI);
    rotation.onComplete = () => rotation = null;
    });
    logo.mouseCursor = MouseCursor.POINTER;

  }


  registerViews(){
    MediatorCore.registerView(new Mediator(_displayObject));

  }
  registerControllers(){}
  registerModels(){}




//private var _displayObject:DisplayObjectContainer;
//
//public function ApplicaionMediator(viewContainer:DisplayObjectContainer)
//{
//// save the view to a var so we can get it later
//_displayObject = viewContainer;
//
//// register the Models, Views and Contollers that will be used in the app
//registerViews();
//registerControllers();
//registerModels();
//
//// tell the app to start but running the Startup controller
//StartupSignalMap.signalStartApp.dispatch();
//
//}
//
//private function registerViews():void
//{
//// register the views
//MediatorCore.registerView(new LoginMediator(_displayObject));
//MediatorCore.registerView(new HomeMediator(_displayObject));
//}
//
//private function registerControllers():void
//{
//// register the controllers
//ControllerCore.registerCommand(new StartupController());
//ControllerCore.registerCommand(new UserContoller());
//}
//
//private function registerModels():void
//{
//// register the models
//ModelCore.registerModel(new LoginModel())
//
//}


}


class App extends DisplayObjectContainer {}
