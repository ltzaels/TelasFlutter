import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); //key recebe um valor aleatorio q vira o id da pagina

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Semana1111', //o nome do apk
      theme: ThemeData(
        primarySwatch: Colors.blue, //o tema do apk
      ),
      home: const MyHomePage(
          title: 'Primeiro teste'), //texto que vai aparecer na appbar
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appbar é a barra horizontal exibida na parte superior da tela
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //alinhamento no centro
          children: <Widget>[
            const Text(
              'Você clicou no botão:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
