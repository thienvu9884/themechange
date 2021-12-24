import 'package:copy6/blocs/main_bloc.dart';
import 'package:copy6/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/data_bloc/theme_bloc.dart';
import 'blocs/data_bloc/theme_state.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: MainBloc.allBloc(),
      child: const CoreApp(),
    );
  }
}

class CoreApp extends StatefulWidget {
  const CoreApp({Key? key}) : super(key: key);

  @override
  _CoreAppState createState() => _CoreAppState();
}

class _CoreAppState extends State<CoreApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          ThemeBloc(initialState: const ThemeStatesInitial()),
      child: BlocBuilder<ThemeBloc, ThemeStates>(
          builder: (context, state) => MaterialApp(
              title: 'Flutter Demo', theme: state.themeData, home: const HomePage())),
    );
  }
}

// Widget _buildWithTheme(BuildContext context, ThemeStates state) {
//   return MaterialApp(
//       title: 'Flutter Demo', theme: state.themeData, home: HomePage());
// }
