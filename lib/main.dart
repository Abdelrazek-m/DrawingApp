import 'package:drawing_app_2/views/drawing_room_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(const Duration(seconds: 10));
  FlutterNativeSplash.remove();
  runApp(const DrawingApp());
}

class DrawingApp extends StatelessWidget {
  const DrawingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawingRoomView(),
    );
  }
}
