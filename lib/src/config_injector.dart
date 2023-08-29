import 'package:artista_config/artista_config.dart';
import 'package:get_it/get_it.dart';

GetIt getArtistaConfig = GetIt.instance;

Future<void> initializeArtista() async {
  getArtistaConfig.registerSingleton<ArtistaConfig>(const ArtistaConfig());
}
