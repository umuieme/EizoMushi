import 'dart:async';

import 'package:eizo_mushi/app/app.dart';
import 'package:eizo_mushi/bootstrap.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env.dev');
  unawaited(bootstrap(() => const App()));
}
