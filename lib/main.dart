import 'package:flutter/material.dart';
import 'package:flutter_application_online_shop_final/screens/category/category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryScreen(),
    );
  }
}

class CategoryHorizontalItemList extends StatelessWidget {
  const CategoryHorizontalItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    blurRadius: 25.0,
                    spreadRadius: -10.0,
                    offset: Offset(
                      0.0,
                      13.0,
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
        const Text(
          'همه',
          style: TextStyle(
            fontFamily: 'SB',
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
