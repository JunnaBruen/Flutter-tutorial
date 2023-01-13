import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // игнорирует разменры и занимает всё доступное пространство
    // return Container(
    //   width: 100,
    //   height: 100,
    //   color: Colors.red,

    //   // дочерний контейнер также игнорирует размеры
    //   child: const _Container(width: 100, height: 100, color: Colors.red),
    // );

    // заполняет всё пространство
    // указывает дочернему контейнеру его размеры
    // return const Center(
    //   child: _Container(width: 100, height: 100, color: Colors.blue),
    // );

    // указывает дочернему контейнеру его размеры
    // позволяет разместить дочерние элементы в пространстве
    // return const Align(
    //     alignment: Alignment.bottomCenter,
    //     child: _Container(width: 100, height: 100, color: Colors.amber));

    // double.infinity заполняет максимальное пространство
    // Flutter рекомендует Container заменить SizedBox
    // return const Center(
    //   child: SizedBox(
    //     width: double.infinity,
    //     height: double.infinity,
    //     child: _Container(width: 100, height: 100, color: Colors.cyan),
    //   ),
    // );

    // если размеры указаны только у дочернего элемента
    // то эти размеры принимают все родители
    // return Center(
    //   child: Container(
    //       color: Colors.blueGrey,
    //       child: const _Container(width: 50, height: 50, color: Colors.green)),
    // );

    // размер дочернего элемента принимают все родители
    // если они не имеют своего размера
    // return Center(
    //   child: Container(
    //     // внешние отступы уменьшают размер контейнера
    //     color: Colors.indigo,
    //     margin: const EdgeInsets.all(50.0),
    //     child: Center(
    //       child: Container(
    //           // внутренние отступы родителя увеличивают его размер
    //           color: Colors.blueGrey,
    //           padding: const EdgeInsets.all(20.0),
    //           child:
    //               const _Container(width: 50, height: 50, color: Colors.green),
    //       ),
    //     ),
    //   ),
    // );

    // задаёт размеры дочернему контейнеру min max
    // return Center(
    //   child: ConstrainedBox(
    //     constraints: const BoxConstraints(
    //       minHeight: 200,
    //       minWidth: 100,
    //       maxHeight: 400,
    //       maxWidth: 200,
    //     ),
    //     child: const _Container(width: 50, height: 10, color: Colors.orange),
    //   ),
    // );

    // отсутствие ограничений
    // выход за рамки доступного пространства
    // выводит ошибку
    // return const UnconstrainedBox(
    //   child: _Container(width: 1000, height: 5000, color: Colors.brown),
    // );

    // отсутствие ограничений
    // выход за рамки доступного пространства
    // НЕ выводит ошибку
    // return const OverflowBox(
    //   minHeight: 0,
    //   minWidth: 0,
    //   maxHeight: double.infinity,
    //   maxWidth: double.infinity,
    //   child: _Container(width: 50, height: 12000, color: Colors.lime),
    // );

    // выводит любое количество текста в одну строку
    // мало текста растягивает, много текста уменьшает
    // return const FittedBox(
    //   child: Text(
    //     'text!',
    //     textDirection: TextDirection.ltr,
    //   ),
    // );

    // ограничения для малого количества текста
    // большой текст уменьшается
    // return const Center(
    //   child: FittedBox(
    //     child: Text(
    //       'text!',
    //       textDirection: TextDirection.ltr,
    //     ),
    //   ),
    // );

    // многострочный текст
    // return const Center(
    //   child: Text(
    //     'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed posuere interdum sem. Quisque ligula eros ullamcorper quis, lacinia quis facilisis sed sapien. Mauris varius diam vitae arcu. Sed arcu lectus auctor vitae, consectetuer et venenatis eget velit. Sed augue orci, lacinia eu tincidunt et eleifend nec lacus. Donec ultricies nisl ut felis, suspendisse potenti. Lorem ipsum ligula ut hendrerit mollis, ipsum erat vehicula risus, eu suscipit sem libero nec erat. Aliquam erat volutpat. Sed congue augue vitae neque. Nulla consectetuer porttitor pede. Fusce purus morbi tortor magna condimentum vel, placerat id blandit sit amet tortor.',
    //     textDirection: TextDirection.ltr,
    //   ),
    // );

    // ошибка
    // FittedBox требуются размеры
    // return const FittedBox(
    //   // child: Container
    //   child: SizedBox(
    //     height: 200,
    //     width: double.infinity,
    //   ),
    // );

    // занимает места по размеру текста
    // return Row(
    //   textDirection: TextDirection.ltr,
    //   children: <Widget>[
    //     // переносит большой текст
    //     Expanded(
    //       child: Container(
    //         color: Colors.blueGrey,
    //         child: const Text(
    //           'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed posuere interdum sem. Quisque ligula eros ullamcorper quis, lacinia quis facilisis sed sapien. Mauris varius diam vitae arcu. Sed arcu lectus auctor vitae, consectetuer et venenatis eget velit. Sed augue orci, lacinia eu tincidunt et eleifend nec lacus. Donec ultricies nisl ut felis, suspendisse potenti. Lorem ipsum ligula ut hendrerit mollis, ipsum erat vehicula risus, eu suscipit sem libero nec erat. Aliquam erat volutpat. Sed congue augue vitae neque. Nulla consectetuer porttitor pede. Fusce purus morbi tortor magna condimentum vel, placerat id blandit sit amet tortor.',
    //           textDirection: TextDirection.ltr,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       color: Colors.purple,
    //       child: const Text(
    //         'Minä olen Junna.',
    //         textDirection: TextDirection.ltr,
    //       ),
    //     ),
    //   ],
    // );

    // FLEX
    // return Row(
    //   textDirection: TextDirection.ltr,
    //   children: <Widget>[
    //     // переносит большой текст
    //     Expanded(
    //       flex: 1,
    //       child: Container(
    //         color: Colors.blueGrey,
    //         child: const Text(
    //           'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
    //           textDirection: TextDirection.ltr,
    //         ),
    //       ),
    //     ),
    //     Expanded(
    //       flex: 2,
    //       child: Container(
    //         color: Colors.green,
    //         child: const Text(
    //           'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed posuere interdum sem.',
    //           textDirection: TextDirection.ltr,
    //         ),
    //       ),
    //     ),
    //     Expanded(
    //       flex: 2,
    //       child: Container(
    //         color: Colors.grey,
    //         child: const Text(
    //           'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed posuere interdum sem. Quisque ligula eros ullamcorper quis, lacinia quis facilisis sed sapien.',
    //           textDirection: TextDirection.ltr,
    //         ),
    //       ),
    //     ),
    //   ],
    // );

    // Flexible
    // return Center(
    //   child: Row(
    //     textDirection: TextDirection.ltr,
    //     children: <Widget>[
    //       // переносит большой текст
    //       Flexible(
    //         child: Container(
    //           color: Colors.blue,
    //           child: const Text(
    //             'Lorem ipsum dolor sit amet.',
    //             textDirection: TextDirection.ltr,
    //           ),
    //         ),
    //       ),
    //       Flexible(
    //         child: Container(
    //           color: Colors.pink,
    //           child: const Text(
    //             'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed posuere interdum sem.',
    //             textDirection: TextDirection.ltr,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    // задаёт точные размеры контейнера
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints.tight(const Size(100, 100)),
        child: const _Container(width: 200, height: 200, color: Colors.white),
      ),
    );
  }
}

class _Container extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  const _Container(
      {Key? key,
      required this.width,
      required this.height,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}

// class _RandomText extends StatelessWidget {
//   late String _text;

//   _RandomText({
//     Key? key,
//   }) : super(key: key);

//   randomText() {
//     List<String> textList = [
//       'Hei. Minä olen Junna.',
//       'Hei. Minä olen Junna. Olen 35 vuotta vanha.',
//       'Hei. Minä olen Junna. Olen 35 vuotta vanha. Asun Pieterissä.',
//       'Hei. Minä olen Junna. Olen 35 vuotta vanha. Asun Pieterissä. Opiskelen suomea.',
//     ];

//     int ranNum = Random().nextInt(textList.length);

//     for (var i = 0; i < textList.length; i++) {
//       if (ranNum == i) {
//         _text = textList[i];
//       }
//     }
//     return _text;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       _text,
//       textDirection: TextDirection.ltr,
//     );
//   }
// }
