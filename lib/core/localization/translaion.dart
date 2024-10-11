import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'choose-language': 'إختر اللغة',
          'ar': 'العربية',
          'en': 'الإنجليزية',
        },
        'en': {
          'choose-language': 'Choose Language',
          'ar': 'Arabic',
          'en': 'English',
        },
      };
}
