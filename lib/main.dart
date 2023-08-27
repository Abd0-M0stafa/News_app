import 'package:flutter/material.dart';
import 'package:news_app/data/getNews/get_news_cubit.dart';
import 'package:news_app/screens/first_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetNewsCubit>(
          create: (BuildContext context) => GetNewsCubit(),
        ),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: FirstScreen()),
    );
  }
}
