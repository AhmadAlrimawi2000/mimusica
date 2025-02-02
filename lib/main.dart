import "package:app_flutter_mimusica/constants/app_theme.dart";
import "package:app_flutter_mimusica/services/theme_service.dart";
import "package:app_flutter_mimusica/view/pages/home_page.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeService theme = Get.put(ThemeService());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi Musica",
      theme: theme.isDark.value ? AppTheme.darkTheme : AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: HomePage(),
    );
  }
}
