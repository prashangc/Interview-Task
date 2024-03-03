import 'package:flutter/material.dart';
import 'package:interview/config/theme/colors.dart';
import 'package:interview/core/injector/dependency_injection.dart';
import 'package:interview/feature/home/domain/usecase/home_usecase.dart';
import 'package:interview/feature/home/presentation/ui/home.dart';

void main() {
  serviceLocatorIntialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interview Demo',
      theme: ThemeData(
        colorScheme: MyColor.lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: MyColor.darkColorScheme,
      ),
      home: HomePage(homeUsecase: getIt<HomeUsecase>()),
    );
  }
}
