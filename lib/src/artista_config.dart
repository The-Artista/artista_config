import 'package:artista_config/src/model/artista_config_model.dart';
import 'package:get_it/get_it.dart';

/// {@template artista_config}
/// Artista UI config
/// {@endtemplate}
///
ArtistaConfigModel gg = ArtistaConfigModel();

class ArtistaConfig {
  const ArtistaConfig();

  void setConfig(ArtistaConfigModel config) {
    gg = config;
  }

  ArtistaConfigModel get config {
    return gg;
  }
}



