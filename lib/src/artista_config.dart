import 'package:flutter/cupertino.dart';

/// {@template artista_config}
/// Artista UI config
/// {@endtemplate}
class ArtistaConfig extends StatelessWidget {
  const ArtistaConfig({this.test, required this.child, super.key});

  final Widget child;
  final String? test;

  @override
  Widget build(BuildContext context) {
    Config(test:test);
    return child;
  }
}

class Config {
  Config({this.test});

  final String? test;
}

class testWidget extends StatelessWidget {
  const testWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final config = Config();
    return Text(config.test);
  }
}

