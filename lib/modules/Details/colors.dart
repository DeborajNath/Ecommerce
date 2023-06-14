import "package:flutter/material.dart";

class ColorCloth extends StatefulWidget {
  const ColorCloth({super.key});

  @override
  State<ColorCloth> createState() => _ColorClothState();
}

class _ColorClothState extends State<ColorCloth> {
  List<Color> Clrs = [
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          for (int i = 0; i < 3; i++)
            Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                  color: Clrs[i],
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                    )
                  ]),
            )
        ],
      ),
    );
  }
}
