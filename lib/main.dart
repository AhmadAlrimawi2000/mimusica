import "package:app_flutter_mimusica/constants/app_theme.dart";
import "package:app_flutter_mimusica/services/theme_service.dart";
import "package:app_flutter_mimusica/view/pages/home_page.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get_storage/get_storage.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi Musica",
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      home: HomePage(),
      themeMode: ThemeService().getThemeMode(),
    );
  }
}
