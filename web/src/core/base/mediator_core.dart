library core.base.medaitorCore;

import 'i_medator.dart';

 class MediatorCore {

 static Map viewMap;
 static MediatorCore _instance;

//private static var __instance:MediatorCore;
//
//private static var __display:DisplayObjectContainer

  MediatorCore() {
    throw new StateError ('You cannot make a new instance of the ViewCore');
  }


  static registerView(IMediator view) {
    if(viewMap == null) {
      viewMap = new Map();
    }


    //check to see we havent already registered a view with these details
    viewMap.forEach((k, v) {

      if (k == view.name) {
        throw new StateError("View already registered with the name ${k}");
        return;
      }

    });

    viewMap[view.name] = view;
  }

}
