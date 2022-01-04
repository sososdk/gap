import 'package:flutter/material.dart';

import '../../auto_divider.dart';

/// An auto direction divider.
class AutoDivider extends StatelessWidget {
  /// Creates an auto direction divider.
  const AutoDivider({
    Key? key,
    this.mainAxisExtent,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
  })  : assert(mainAxisExtent == null || mainAxisExtent >= 0.0),
        assert(thickness == null || thickness >= 0.0),
        assert(indent == null || indent >= 0.0),
        assert(endIndent == null || endIndent >= 0.0),
        super(key: key);

  /// The divider's extent.
  ///
  /// If this is null, then the [DividerThemeData.space] is used. If that is
  /// also null, then this defaults to 0.0.
  final double? mainAxisExtent;

  /// The thickness of the line drawn within the divider.
  ///
  /// A divider with a [thickness] of 0.0 is always drawn as a line with a
  /// width of exactly one device pixel.
  ///
  /// If this is null, then the [DividerThemeData.thickness] is used which
  /// defaults to 0.0.
  final double? thickness;

  /// The amount of empty space on top of the divider.
  ///
  /// If this is null, then the [DividerThemeData.indent] is used. If that is
  /// also null, then this defaults to 0.0.
  final double? indent;

  /// The amount of empty space under the divider.
  ///
  /// If this is null, then the [DividerThemeData.endIndent] is used. If that is
  /// also null, then this defaults to 0.0.
  final double? endIndent;

  /// The color to use when painting the line.
  ///
  /// If this is null, then the [DividerThemeData.color] is used. If that is
  /// also null, then [ThemeData.dividerColor] is used.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// const Divider(
  ///   color: Colors.deepOrange,
  /// )
  /// ```
  /// {@end-tool}
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dividerTheme = DividerTheme.of(context);
    final mainAxisExtent = this.mainAxisExtent ?? dividerTheme.space ?? 0.0;
    final thickness = this.thickness ?? dividerTheme.thickness;
    final color =
        this.color ?? dividerTheme.color ?? Theme.of(context).dividerColor;
    final indent = this.indent ?? dividerTheme.indent;
    final endIndent = this.endIndent ?? dividerTheme.endIndent;
    return Gap.expand(
      mainAxisExtent,
      thickness: thickness,
      color: color,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
