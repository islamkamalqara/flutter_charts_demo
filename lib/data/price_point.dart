import 'dart:math';
import 'package:collection/collection.dart';

class PricePoint {
  final double x;
  final double y;

  PricePoint({required this.x, required this.y});
}

List<PricePoint> get pricePoints {
  final Random random = Random();
  final randomNumbers = <double>[3,5,-6,2,-8,-3,6,9,-5];
 /* for (var i = 0; i <= 11; i++) {
    randomNumbers.add(random.nextDouble());
  }*/
  return randomNumbers
      .mapIndexed(
          (index, element) => PricePoint(x: index.toDouble(), y: element))
      .toList();
}
