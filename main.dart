import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'bottom_navigation_bar_controller.dart';

void main() {

WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.red,
  ),
  debugShowCheckedModeBanner: false,
  home: BottomNavigationBarController(),
));
});
}
