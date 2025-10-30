import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:track_and_deploy/track_and_deploy.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await SentryFlutter.init((options) {
    options.dsn = 'YOUR_DSN_PROD';
    options.sendDefaultPii = true;
  }, appRunner: () => runApp(SentryWidget(child: const MyApp())));
}
