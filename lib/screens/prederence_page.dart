import 'package:copy6/blocs/data_bloc/theme_bloc.dart';
import 'package:copy6/blocs/data_bloc/theme_event.dart';
import 'package:copy6/models/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PreferencePage extends StatelessWidget {
  const PreferencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferences'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: AppTheme.values.length,
          itemBuilder: (context, index) {
            final itemAppTheme = AppTheme.values[index];
            return Card(
              color: appThemeData[itemAppTheme]?.primaryColor,
              child: ListTile(
                title: Text(
                  itemAppTheme.toString(),
                  style: appThemeData[itemAppTheme]?.textTheme.bodyText1,
                ),
                onTap: () {
                  BlocProvider.of<ThemeBloc>(context)
                      .add(GetThemeEvent(theme: itemAppTheme));
                },
              ),
            );
          }),
    );
  }
}
