import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  const Custom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        child: CustomMultiChildLayout(
          delegate: DelegateMulti(),
          children: [
            LayoutId(
                id: 1,
                child: Container(
                  color: Colors.amber,
                  height: 100,
                  width: 100,
                )),
            LayoutId(
                id: 2,
                child: Container(
                  color: Colors.pink,
                )),
            LayoutId(
                id: 3,
                child: const Text(
                  'data',
                  textDirection: TextDirection.ltr,
                )),
          ],
        ),
      ),
    );
  }
}

class DelegateMulti extends MultiChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) {
    return const Size(100, 500);
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }

  @override
  void performLayout(Size size) {
    if (hasChild(1) && hasChild(2) && hasChild(3)) {
      layoutChild(1, BoxConstraints.loose(size));
      layoutChild(2, BoxConstraints.tight(Size(50, size.height + 50)));
      layoutChild(3, BoxConstraints.loose(size));

      positionChild(1, const Offset(100, 400));
      positionChild(2, const Offset(-100, 0));
      positionChild(3, const Offset(0, -50));
    }
  }
}
