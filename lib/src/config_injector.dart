import 'package:artista_config/artista_config.dart';
import 'package:get_it/get_it.dart';

GetIt artista = GetIt.instance;

Future<void> initializeArtista() async {
  artista.registerSingleton<ArtistaConfig>(const ArtistaConfig());
}
