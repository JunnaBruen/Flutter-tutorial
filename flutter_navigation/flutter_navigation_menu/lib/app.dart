import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

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
                      'Main',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.orange,
                      ),
                    ),
                    Container(
                      color: Colors.orange,
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        icon: const Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 20,
                        ),
                        label: const Text(
                          'Main',
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
