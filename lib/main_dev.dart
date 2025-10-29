import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:track_and_deploy/env_variables.dart';
import 'package:track_and_deploy/track_and_deploy.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await EnvVariables.instance.init(envType: EnvTypeEnum.prod);

  runApp(const MyApp());
}
