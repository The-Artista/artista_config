import 'package:artista_config/artista_config.dart';
import 'package:flutter/material.dart';

void main() async {
  await initializeArtista();
  try {
    await initializeArtista();
  } catch (e) {}
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final gg = getArtistaConfig<ArtistaConfig>();
    gg.setConfig(ArtistaConfigModel(
      colors: ArtistaColorModel(danger: Colors.brown),
    ));
    return MaterialApp(
      title: 'fdg',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: gg.config.colors!.warning!.shade50),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'd'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    final ddgg = getArtistaConfig<ArtistaConfig>();
    /*print(ddgg.config.typograpy?.typographyRole?.labelSmall?.fontSize);
    print(ddgg.config.typograpy?.typographyRole?.bodySmall?.fontSize);
    print(ddgg.config.typograpy?.typographyRole?.bodyMedium?.fontSize);
    print(ddgg.config.typograpy?.typographyRole?.bodyLarge?.fontSize);
    print(ddgg.config.typograpy?.typographyRole?.titleMedium?.fontSize);
    print(ddgg.config.typograpy?.typographyRole?.titleLarge?.fontSize);
    print(ddgg.config.typograpy?.typographyRole?.headlineSmall?.fontSize);
    print(ddgg.config.typograpy?.typographyRole?.headlineMedium?.fontSize);
    print(ddgg.config.typograpy?.typographyRole?.headlineLarge?.fontSize);
    print(ddgg.config.typograpy?.typographyRole?.displaySmall?.fontSize);*/
    print(ddgg.config.typograpy?.typographyRole?.displayMedium?.fontSize);
    print(ddgg.config.typograpy?.typographyRole?.displayLarge?.fontSize);

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          'dfgdf',
          style: TextStyle(color: context.artistaColors!.success),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Label small',
              style: TextStyle(fontSize: ddgg.config.typograpy?.typographyRole?.labelSmall?.fontSize,letterSpacing: 1,height: 1.618,fontWeight: FontWeight.w500),
            ),
            Text(
              'Body small/Label medium/',
              style: TextStyle(fontSize: ddgg.config.typograpy?.typographyRole?.bodySmall?.fontSize, letterSpacing: .75,height: 1.618),
            ),
            Text(
              'Body medium	(base)/Label large',
              style: TextStyle(fontSize: ddgg.config.typograpy?.typographyRole?.bodyMedium?.fontSize,letterSpacing: .50,height: 1.618),
            ),
            Text(
              'Body large/Title small',
              style: TextStyle(fontSize: ddgg.config.typograpy?.typographyRole?.bodyLarge?.fontSize,letterSpacing: .50,height: 1.618),
            ),
            Text(
              'Title medium',
              style: TextStyle(fontSize: ddgg.config.typograpy?.typographyRole?.titleMedium?.fontSize,letterSpacing: .25,height: 1.618),
            ),
            Text(
              '	Title large',
              style: TextStyle(fontSize: ddgg.config.typograpy?.typographyRole?.titleLarge?.fontSize,letterSpacing: 0,height: 1.618),
            ),
            Text(
              'Headline small	',
              style: TextStyle(fontSize: ddgg.config.typograpy?.typographyRole?.headlineSmall?.fontSize,letterSpacing: -0.25,height: 1.33),
            ),
            Text(
              'Headline medium	',
              style: TextStyle(fontSize: ddgg.config.typograpy?.typographyRole?.headlineMedium?.fontSize,letterSpacing: -0.50,height: 1.33),
            ),
            Text(
              'Headline large	',
              style: TextStyle(fontSize: ddgg.config.typograpy?.typographyRole?.headlineLarge?.fontSize,letterSpacing: -0.75,height: 1.33),
            ),
            Text(
              'Display small	',
              style: TextStyle(fontSize: ddgg.config.typograpy?.typographyRole?.displaySmall?.fontSize,letterSpacing: -1,height: 1.33),
            ),
            Text(
              'Display medium	',
              style: TextStyle(fontSize: ddgg.config.typograpy?.typographyRole?.displayMedium?.fontSize,letterSpacing: -1.25,height: 1.33),
            ),
            Text(
              'Display large	',
              style: TextStyle(fontSize: ddgg.config.typograpy?.typographyRole?.displayLarge?.fontSize,letterSpacing: -1.50,height: 1.33),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
