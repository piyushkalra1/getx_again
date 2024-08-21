
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en':{
      'message':'what is your name',
      'name': 'Piyush',
      "internet exception": "We are unable to show results\n Please check your data\n connection .",
    },

    'hi':{
      'message':'आपका क्या नाम है',
      'name': 'पीयूष',
      "internet exception":"हम परिणाम दिखाने में असमर्थ हैं\n कृपया अपना डेटा\n कनेक्शन जांचें" ,
    },
  };

}