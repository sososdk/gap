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
  const _Body({required this.axis});

  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: axis,
      slivers: const <Widget>[
        _SliverBox(color: Colors.green),
        SliverAutoDivider(
            mainAxisExtent: 30, thickness: 0, color: Colors.black),
        _SliverBox(color: Colors.red),
        _SliverBox(color: Colors.yellow),
        SliverAutoDivider(mainAxisExtent: 30),
        _SliverBox(color: Colors.green),
        _SliverBox(color: Colors.red),
        _SliverBox(color: Colors.yellow),
      ],
    );
  }
}

class _SliverBox extends StatelessWidget {
  const _SliverBox({
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return SliverGap(
      100,
      thickness: 100,
      color: color,
    );
  }
}
