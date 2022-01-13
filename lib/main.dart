import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'I am a SnackBar',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      backgroundColor: Colors.pink,
                      duration: Duration(seconds: 20),
                    ),
                  );
                },
                child: Text(
                  'Click Me',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
