import 'package:flutter/material.dart';
import 'package:flutter_youtube_app/screen/home_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}