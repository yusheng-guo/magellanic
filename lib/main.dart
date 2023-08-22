import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magellanic/presentation/routers/generated_routes.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:magellanic/views/ui/main_screen.dart';

void main() async {
  // 获取权限
  // await [
  //   Permission.location,
  //   Permission.storage,
  // ].request();
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent, // 设置状态栏颜色
  //   statusBarBrightness: Brightness.dark, // 设置状态栏亮度
  // ));
  runApp(const MyApp());
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
  //   SystemUiOverlay.bottom,
  //   SystemUiOverlay.top,
  // ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magellanic',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MainScreen(),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}
