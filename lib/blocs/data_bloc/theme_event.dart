import 'package:copy6/models/theme_data.dart';
import 'package:equatable/equatable.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class GetThemeEvent extends ThemeEvent {
  final AppTheme theme;

  const GetThemeEvent({required this.theme});

  @override
  // TODO: implement props
  List<Object?> get props => [theme];
}
