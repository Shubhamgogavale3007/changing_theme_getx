import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_lang_app/app/language_translate/language_translate.dart';

import 'app/routes/app_pages.dart';

void main() {
/*  Locale? locale;
  locale = await currentLanguage();*/

  runApp(
    GetMaterialApp(
      darkTheme: ThemeData.dark(), // standard dark theme
      themeMode: ThemeMode.system, //
      translations: LocaleString(),
      locale: Locale('en', 'US'),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

/* checkLang(var locale) async {
  print('checkLang');

  SharedPreferences sp = await SharedPreferences.getInstance();
  if(sp.get("Locale") == 'english'){
    locale = Locale('en', 'US');
    Get.updateLocale(locale);
  }
else if(sp.get("Locale") == 'hindi'){
    locale = Locale('hn', 'IN');
    Get.updateLocale(locale);
}
else if(sp.get("Locale") == 'gujarati'){
    locale = Locale('gj', 'IN');
    Get.updateLocale(locale);
}
}*/

/*Future<Locale> currentLanguage() async {
  Locale? locale;
  SharedPreferences sp = await SharedPreferences.getInstance();

  String currentLanguage = sp.getString("Locale") ?? 'english';
  if (currentLanguage == 'english') {
    locale = Locale('en', 'US');
  } else if (currentLanguage == 'hindi') {
    locale = Locale('hn', 'IN');
  } else if (currentLanguage == 'gujarati') {
    locale = Locale('gj', 'IN');
  }
  return locale!;
}*/
