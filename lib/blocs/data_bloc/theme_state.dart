import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeStates extends Equatable {
  final ThemeData? themeData;

  const ThemeStates({this.themeData});

  @override
  List<Object?> get props => [themeData];
}

class ThemeStatesInitial extends ThemeStates {
  const ThemeStatesInitial();

  @override
  List<Object> get props => [];
}
