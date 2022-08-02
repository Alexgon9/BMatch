import 'package:bmatch/injection.dart';
import 'package:bmatch/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> startApp(Environm env) async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const AppWidget());

  FlutterNativeSplash.remove();
}

