import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magellanic/presentation/routers/generated_routes.dart';
// import 'package:magellanic/views/ui/main_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // 设置状态栏颜色
    statusBarBrightness: Brightness.dark, // 设置状态栏亮度
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
