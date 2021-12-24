import 'package:copy6/screens/prederence_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PreferencePage(),
              ));
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          'Home',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
