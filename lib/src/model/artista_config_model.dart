import 'package:artista_config/artista_config.dart';

class ArtistaConfigModel {
  ArtistaConfigModel({this.colors}) {
    colors ??= ArtistaColorModel();
  }

  ArtistaColorModel? colors;
}
