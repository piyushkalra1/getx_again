
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en':{
      'message':'what is your name',
      'name': 'Piyush',
    },
    'hi':{
      'message':'आपका क्या नाम है',
      'name': 'पीयूष',
    },
  };

}