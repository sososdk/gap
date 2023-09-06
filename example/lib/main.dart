import 'package:auto_divider/auto_divider.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Gap.expand(20, thickness: 20, color: Colors.red),
            Gap(80),
            Gap.expand(20, thickness: 20, color: Colors.red),
            Flexible(
              child: Gap.expand(double.infinity,
                  thickness: double.infinity, color: Colors.blue),
            ),
            AutoDivider(mainAxisExtent: 30),
            IntrinsicHeight(
              child: Row(
                children: <Widget>[
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
            AutoDivider(mainAxisExtent: 30),
            Gap.expand(200, thickness: 200, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
