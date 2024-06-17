import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 56.0,
                      width: 56.0,
                      decoration: ShapeDecoration(
                        shadows: const [
                          BoxShadow(
                            color: Colors.red,
                            blurRadius: 40.0,
                            spreadRadius: -6.0,
                            offset: Offset(
                              0.0,
                              15.0,
                            ),
                          )
                        ],
                        color: Colors.red,
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            40.0,
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.mouse,
                      color: Colors.white,
                      size: 32.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text('data'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
