import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(child: QuizPage()),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> puntuacion = [];

  List<String> preguntas = [
    '¿Los globulos rojos viven 4 meses?',
    'El cuerpo humano adulto tiene 306 huesos',
    'La cobalamina es una vitamina',
  ];

  int numeroPregunta = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                preguntas[numeroPregunta],
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        numeroPregunta++;
                        puntuacion.add(const Icon(
                          Icons.check,
                          color: Color.fromARGB(255, 18, 159, 23),
                          size: 30,
                        ));
                      });
                    },
                    child: const Text(
                      "Verdadero",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              )),
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        numeroPregunta++;
                        puntuacion.add(const Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 30,
                        ));
                      });
                    },
                    child: const Text(
                      "Falso",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              )),
        ),
        Row(
          children: puntuacion,
        ),
      ],
    );
  }
}
