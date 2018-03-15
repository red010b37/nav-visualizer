library core.base.medaitorCore;


 class MediatorCore {

 static List viewList;
 static MediatorCore _instance;

//private static var __instance:MediatorCore;
//
//private static var __display:DisplayObjectContainer

  MediatorCore() {
    throw new StateError ('You cannot make a new instance of the ViewCore');
  }


  static registerView(view) {
    if(viewList == null) {
      viewList = new List();
    }

    viewList[view] = view;
  }

}
