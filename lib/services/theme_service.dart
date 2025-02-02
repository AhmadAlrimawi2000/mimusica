import 'package:get/get.dart';

class ThemeService extends GetxController {
  var isDark = false.obs;

  void changeTheme() {
    isDark(!isDark.value);
  }
}
