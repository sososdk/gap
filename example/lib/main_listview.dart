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
            Expanded(child: _Body(axis: Axis.vertical)),
            Expanded(child: _Body(axis: Axis.horizontal)),
          ],
        ),
      ),
    );
  }
}

/// A widget.
class _Body extends StatelessWidget {
  /// Creates a [_Body].
  const _Body({
    required this.axis,
  });

  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: axis,
      children: const <Widget>[
        _Gap(color: Colors.green),
        AutoDivider(mainAxisExtent: 30, color: Colors.black),
        _Gap(color: Colors.red),
        _Gap(color: Colors.yellow),
        AutoDivider(mainAxisExtent: 30),
        _Gap(color: Colors.green),
        _Gap(color: Colors.red),
        _Gap(color: Colors.yellow),
      ],
    );
  }
}

class _Gap extends StatelessWidget {
  const _Gap({
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Gap(100, thickness: 100, color: color);
  }
}
