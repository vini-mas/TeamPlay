import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teamplay/src/provider/theme_provider.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/welcome';
  @override
  Widget build(BuildContext context) {
    final _colors = Provider.of<ThemeProvider>(context).getColors();
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(36),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Team',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(
                  width: 250,
                  child: Text(
                    'Play',
                    textAlign: TextAlign.right,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.apply(color: _colors.primary2),
                  ),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  minimumSize: Size(double.infinity, 50),
                  textStyle: TextStyle(fontSize: 16)),
              onPressed: () =>
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme(),
              child: Text('Toggle Theme'),
            )
          ],
        ),
      ),
    ));
  }
}
