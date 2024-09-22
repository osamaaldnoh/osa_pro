import 'src/core/config/config.dart';
import 'package:flutter/material.dart';
import 're_name.dart';

Future<void> main() async {
  //  Here we are calling the Dependency Injection
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();

  //  This is the main app
  runApp(RootApp());
}
