import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'merhaba': 'Hello',
          "email": 'Email',
        },
        'tr-TR': {
          'merhaba': 'Merhaba',
          "email": 'Email',
        },
        'de_DE': {
          'merhaba': 'Hallo',
          "email": 'Email',
        }
      };
}
