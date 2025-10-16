import 'package:donut_app_8sc/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  //list of donuts
  final List donutOnSale = [
    //donutflavor
    [
      'Chocolate',
      '100.00',
      Colors.brown,
      'lib/images/Chocolate_donut.png',
      'starbucks',
    ],
    [
      'Strawberry',
      '89.00',
      Colors.pink,
      'lib/images/Strawberry_donut.png',
      'Dunkin Donuts',
    ],
    [
      'Vanilla',
      '100.00',
      Colors.amber,
      'lib/images/grape_donut.png',
      'KrispyKreme',
    ],
    [
      'Glazed',
      '140.00',
      Colors.yellow,
      'lib/images/icecream_donut.png',
      'Italian coffe',
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //numero de columnas
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
      ),
      itemCount: donutOnSale.length,
      //lo que se va a construir en cada celda
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          donutImagePath: donutOnSale[index][3],
          donutProvider: donutOnSale[index][4],
        );
      },
    );
  }
}
