import 'package:auto_divider/auto_divider.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gap Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

/// A widget.
class HomePage extends StatelessWidget {
  /// Creates a [HomePage].
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Gap.expand(20, thickness: 20, color: Colors.red),
            const Gap(80),
            const Gap.expand(20, thickness: 20, color: Colors.red),
            const Flexible(
              child: Gap.expand(double.infinity,
                  thickness: double.infinity, color: Colors.blue),
            ),
            const AutoDivider(mainAxisExtent: 30),
            IntrinsicHeight(
              child: Row(
                children: const <Widget>[
                  Gap(20,
                      thickness: 20, color: Colors.green, crossAxisExtent: 20),
                  AutoDivider(mainAxisExtent: 20, color: Colors.green),
                  Gap(50),
                  AutoDivider(mainAxisExtent: 20, color: Colors.green),
                  Gap(20,
                      thickness: 20, color: Colors.green, crossAxisExtent: 20),
                ],
              ),
            ),
            const AutoDivider(mainAxisExtent: 30),
            const Gap.expand(200, thickness: 200, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
