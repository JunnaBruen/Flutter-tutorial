import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  const Custom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        child: CustomSingleChildLayout(
          delegate: DelegateSingle(),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class DelegateSingle extends SingleChildLayoutDelegate {
  // возвращает размеры CustomSingleChildLayout
  @override
  Size getSize(BoxConstraints constraints) {
    // return constraints.biggest;
    // return const Size(500, 100);
    // return Size(constraints.biggest.width, constraints.biggest.width);
    return Size(constraints.biggest.width, 100);
  }

  // получает размеры родителя
  // возвращает размеры дочернему элементу
  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    // return BoxConstraints.tight(constraints.biggest);
    // return BoxConstraints.tight(const Size(250, 350));
    return BoxConstraints.tight(const Size(50, 50));
  }

  // возвращает отступы
  @override
  Offset getPositionForChild(Size size, Size childSize) {
    // return Offset(10, 20);
    // return Offset(childSize.height, 20);

    final centerX = size.width / 2 - childSize.width / 2;
    final centerY = size.height / 2 - childSize.height / 2;
    return Offset(centerX, centerY);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return true;
  }
}
