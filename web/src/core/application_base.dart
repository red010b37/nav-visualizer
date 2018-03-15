library purestreams;

import 'package:stagexl/stagexl.dart';

class ApplicationBase {

  DisplayObjectContainer _displayObject;
  List _registryList;

  ApplicationBase(this._displayObject)  {


//    init();
  }

  init() {
    _registryList = new List();
  }


  initMediators() {}
  initModels() {}
  initCommands() {}

//
//  private function init():void
//  {
//  _registery = new Registery();
//
//  initBundles();
//  initCommands();
//  initMediators();
//  initModels();
//  }
//
//
//
//  protected function initBundles():void
//  {
//  // Stub to be over written
//  }
//
//  protected function initMediators():void
//  {
//  // Stub to be over written
//  }
//
//  protected function initModels():void
//  {
//  // Stub to be over written
//  }
//
//
//  protected function initCommands():void
//  {
//  // Stub to be over written
//  }
//
//
//
//
//  public function registerMediator(m:Mediator):void
//  {
//  _registery.add(m);
//  }
//
//
//  public function registerModel(m:Model):void
//  {
//  _registery.add(m);
//  }
//
//  public function registerCommand(c:Command):void
//  {
//  _registery.add(c);
//  }
//
//
//  public function registerBundle(b:Bundle):void
//  {
//  _registery.add(b);
//  }


}
