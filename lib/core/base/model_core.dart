
import '../mvc/model.dart';

class ModelCore {

  static Map modelMap;
//  static ModelCore _instance;

  //private static var __instance:MediatorCore;
  //
  //private static var __display:DisplayObjectContainer

  MediatorCore() {
    throw new StateError ('You cannot make a new instance of the Model Core');
  }


  static registerModel(Model model) {
    if(modelMap == null) {
      modelMap = new Map();
    }


    //check to see we havent already registered a view with these details
    modelMap.forEach((k, v) {
      if (k == model.name) {
        throw new StateError("Model already registered with the name ${k}");
      }

    });

    print("Added Model ${model.name}");


    modelMap[model.name] = model;
  }

}
