import 'package:artista_config/artista_config.dart';
import 'package:artista_config/src/model/typography.dart';

class ArtistaConfigModel {
  ArtistaConfigModel({this.colors, this.typograpy}) {
    colors ??= ArtistaColorModel();
    typograpy ??= TypograpyConfig();
  }

  ArtistaColorModel? colors;
  TypograpyConfig? typograpy;
}
