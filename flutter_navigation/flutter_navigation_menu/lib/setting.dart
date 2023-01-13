import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

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
            
            ],
          ),
        ),
      ),
    );
  }
}