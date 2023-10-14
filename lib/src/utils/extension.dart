import 'package:artista_config/artista_config.dart';
import 'package:get_it/get_it.dart';

extension Artista on GetIt {
  ArtistaConfig get config => artista<ArtistaConfig>();
}