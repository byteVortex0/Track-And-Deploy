import 'package:clevertap_plugin/clevertap_plugin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:track_and_deploy/track_and_deploy.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // This is only For Practice Purpose for initialising CleverTap
  // Not right to put it in dev main file
  const bool isDev = bool.fromEnvironment('dart.vm.product') == false;
  if (isDev) {
    CleverTapPlugin.createNotificationChannel(
      'CTDev',
      'Dev Channel',
      'Notifications for Debug builds',
      5,
      true,
    );
    CleverTapPlugin.onUserLogin({'Name': 'Dev Tester', 'Identity': '123456'});
  }

  runApp(const MyApp());
}
