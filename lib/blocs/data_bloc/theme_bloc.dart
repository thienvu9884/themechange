import 'package:copy6/blocs/data_bloc/theme_event.dart';
import 'package:copy6/blocs/data_bloc/theme_state.dart';
import 'package:copy6/models/theme_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeStates> {
  ThemeBloc({required ThemeStates initialState}) : super(initialState) {
    on<GetThemeEvent>(_getData);
  }

  Future<ThemeStates?> _getData(
      GetThemeEvent event, Emitter<ThemeStates> emit) async {
    emit(ThemeStates(themeData: appThemeData[event.theme]));
  }
}
