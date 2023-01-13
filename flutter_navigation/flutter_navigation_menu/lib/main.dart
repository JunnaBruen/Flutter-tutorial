import 'package:flutter/material.dart';
import 'app.dart';
import 'setting.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) {
        return const Main();
      },
      '/app': (context) {
        return const App();
      },
      '/setting': (context) {
        return const Setting();
      },
    },
  ));
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    const Text(
                      'App',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                      ),
                    ),
                    Container(
                color: Colors.green,

                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/app');
                        },
                        icon: const Icon(
                          Icons.apps,
                          color: Colors.white,
                          size: 20,
                        ),
                        label: const Text(
                          'Start App',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 50),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    const Text(
                      'Setting',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                color: Colors.blue,

                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/setting');
                        },
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 20,
                        ),
                        label: const Text(
                          'Setting',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
