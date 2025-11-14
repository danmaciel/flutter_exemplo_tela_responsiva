import 'package:exemplo_tamanho_tela/layout_builder_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder>{
        "/layout_builder": (_) => LayoutBuilderPage()
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.paddingOf(context).top;
    final appBarHeight = kToolbarHeight; //constante usada se nao alterou o tamanho da appbar padrao
    final heightAvailable = MediaQuery.of(context).size.height - (statusBarHeight + appBarHeight);


   return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Container(
             color: Colors.orange,
             width: MediaQuery.of(context).size.width,
             height: heightAvailable * .5,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 ElevatedButton(
                     onPressed: () => Navigator.of(context).pushNamed("/layout_builder"),
                     child: Text("Ir para tela com Layout Builder")
                 ),
               ],
             )
           ),
            Container(
              color: Colors.blueAccent,
              width: MediaQuery.of(context).size.width,
              height: heightAvailable * .5,
            )
          ],
        ),
      ),
    );
  }
}
