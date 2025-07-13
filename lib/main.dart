import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_state_management/controller/favorite_controller.dart';
import 'package:quiz_state_management/view/detail_view.dart';
import 'package:quiz_state_management/view/favorite_view.dart';
import 'package:quiz_state_management/view/home_view.dart';

void main() {
  runApp(
    // todo-5: wrap with ChangeNotifierProvider or BlocProvider and set the controller inside the [create] parameter
    ChangeNotifierProvider(
      create: (context) => FavoriteController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      routes: {
        '/favorite': (context) => const FavoriteView(),
        '/detail': (context) => DetailView(
          productId: ModalRoute.of(context)!.settings.arguments as String,
        ),
      },
    );
  }
}
