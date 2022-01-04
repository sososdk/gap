# AutoDivider
Inspired by [Gap](https://pub.dartlang.org/packages/gap). Flutter widgets for easily adding gaps or dividers inside Flex widgets such as Columns and Rows or scrolling views.

[![Pub](https://img.shields.io/pub/v/auto_divider.svg)](https://pub.dartlang.org/packages/auto_divider)

## Introduction

### AutoDivider

When it comes to add divider between widgets inside a `Column` or a `Row`, we can add a `Divider` inside a `Column`, and add a `VerticalDivider` inside a `Row`, it's very verbose.

`AutoDivider` ia another option. It's like `Divider` but you don't have to know if it's inside a `Row` or a `Column`. So that it's less verbose than using a `Divider` and `VerticalDivider`.

## Getting started

In your library add the following import:

```dart
import 'package:auto_divider/auto_divider.dart';
```

Then you just have to add a `AutoDivider` inside a `Column` or a `Row` with the specified extent.

```dart
return Column(
  children: <Widget>[
    Container(color: Colors.red, height: 20),
    const AutoDivider(mainAxisExtent: 20), // Adds a divider with space of 20 pixels.
    Container(color: Colors.red, height: 20),
  ],
);
```

The `AutoDivider` widget also works inside `Scrollable` widgets such as `ListViews`. In these cases, it will occupy the space in the same direction as the `Scrollable`.

### Gap

This package also comes with a `Gap` widget.
The `Gap` widget will add empty space in a `Column` or a `Row` with the specified size.


### Other parameters

By default a `Gap` will have no extent in the opposite direction of the `Flex` parent.
If you want the `Gap` to have a color, you'll have to set the `color` and the `crossAxisExtent` parameters.
You can also use the `Gap.expand` constructor to expand the `Gap` in the opposite direction of the `Flex` parent.

### SliverGap

There is also a Sliver version of the `Gap` widget:

```dart
return CustomScrollView(
  slivers: <Widget>[
    const SliverGap(20), // Adds an empty space of 20 pixels.
  ],
);
```

## Changelog

Please see the [Changelog](https://github.com/sososdk/gap/blob/master/CHANGELOG.md) page to know what's recently changed.

## Contributions

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/sososdk/gap/issues).  
If you fixed a bug or implemented a feature, please send a [pull request](https://github.com/sososdk/gap/pulls).

