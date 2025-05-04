import 'package:flutter/material.dart';
import 'package:moneymemos/widgets/pops/i_pop.dart';

class IPopButton extends IPop {
  final Widget child;

  const IPopButton({super.key, required this.child});

  @override
  Widget buildChild(BuildContext context) => child;
}
