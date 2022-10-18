import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Suprator extends StatelessWidget {
  const Suprator({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 0.75,
      endIndent: 10,
      indent: 60,
    );
  }
}
