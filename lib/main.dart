import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'views/feature/components/flutter-lms-dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
   appWindow.size = const Size(600, 450);
  runApp( MyApp());
  appWindow.show();
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(1024, 868);
    win.minSize = const Size(1120, 800);
    win.maxSize = const Size(1920, 1080);
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Learning Dashboard";
    win.show();
  });
}

const borderColor = Color(0xFF805306);
//   doWhenWindowReady(() {
//     final win = appWindow;
//     win.minSize = const Size(1120, 800);
//     win.maxSize = const Size(1920, 1080);
//     win.size = const Size(1024, 868);
//     win.alignment = Alignment.center;
//     win.title = "Learning Dashboard";
//     win.show();
//   });

//   runApp(const MainApp());
// }

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  WindowBorder(
         color: borderColor,
          width: 1,
        child: DashboardScreen()),
    );
  }
}
