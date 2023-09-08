import 'package:artista_config/artista_config.dart';
import 'package:artista_config/src/model/typography.dart';

class ArtistaConfigModel {
  ArtistaConfigModel({this.colors, this.typograpy, this.spacing}) {
    colors ??= ArtistaColorModel();
    typograpy ??= TypograpyConfig();
    spacing ??= SpacinConfig();
  }

  ArtistaColorModel? colors;
  TypograpyConfig? typograpy;
  SpacinConfig? spacing;
}
