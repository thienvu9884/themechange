import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data_bloc/theme_bloc.dart';
import 'data_bloc/theme_state.dart';

class MainBloc {
  static List<BlocProvider> allBloc() {
    return [
      BlocProvider<ThemeBloc>(
          create: (BuildContext context) =>
              ThemeBloc(initialState: const ThemeStatesInitial()))
    ];
  }
}
