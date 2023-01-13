import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_beginning/custom_icons.dart';
import 'package:flutter_beginning/event.dart';

// colors
Color amber50 = Colors.amber.shade50;
Color green = Colors.green;
Color blue = Colors.blue;
Color grey900 = Colors.grey.shade900;

void main() {
  runApp(TutorialApp());
}

class TutorialApp extends StatelessWidget {
  TutorialApp({Key? key}) : super(key: key);

  final List<String> events = [
    'Event: 1',
    'Event: 2',
    'Event: 3',
    'Event: 4',
    'Event: 5',
    'Event: 6',
    'Event: 7',
    'Event: 8',
    'Event: 9',
  ];

  final List<Event> lomatSuome = [
    Event(
        name: 'Itsenäisyyspäivä',
        location: 'Suomi',
        startDateTime: DateTime.utc(1917, 12, 6)),
    Event(
        name: 'Runebergin päivä',
        location: 'Suomi',
        startDateTime: DateTime.utc(1804, 2, 5)),
    Event(
        name: 'Suomen kielen päivää',
        location: 'Suomi',
        startDateTime: DateTime.utc(1557, 4, 9)),
    Event(
        name: 'Puolustusvoimain lippujuhlan päivä',
        location: 'Suomi',
        startDateTime: DateTime.utc(1867, 6, 4)),
    Event(
        name: 'Eurooppa-päivä',
        location: 'Suomi',
        startDateTime: DateTime.utc(1949, 5, 9)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'BlackOpsOne',
        backgroundColor: amber50,
      ),
      darkTheme: ThemeData.dark(),
      title: 'Flutter beginning',
      home: Scaffold(
        backgroundColor: amber50,
        appBar: AppBar(
          backgroundColor: green,
          title: Text(
            'Flutter beginning',
            style: TextStyle(color: amber50),
          ),
          centerTitle: true,
        ),

        // прокрутка
        body: SingleChildScrollView(
          // ширина и высота экрана
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/Finland_house.jpg'),
              fit: BoxFit.cover,
              opacity: 0.3,
            )),
            child: SizedBox(
              width: double.infinity,
              // отступы
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                // колонка
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // размеры картинки
                    SizedBox(
                      width: double.infinity,
                      height: 234,
                      // контейнер картинки + обводка
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: blue,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: grey900,
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset: const Offset(1, 2),
                              ),
                            ]),
                        // картинка svg
                        child: SvgPicture.asset(
                          'assets/images/Flag_of_Finland.svg',
                        ),
                      ),
                    ),
                    // картинка jpg
                    // Image(
                    //   image: const AssetImage('assets/images/Flag_of_Finland.jpg'),
                    //   color: blue,
                    //   colorBlendMode: BlendMode.screen,
                    //   semanticLabel: 'Suomen lippu',
                    // ),
                    // отступ между блоками
                    const SizedBox(
                      height: 20,
                    ),
                    // текст
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Maamme.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            // fontStyle: FontStyle.italic,
                            // decoration: TextDecoration.underline,
                            color: blue,
                            letterSpacing: 4,
                            shadows: [
                              Shadow(
                                color: grey900,
                                offset: const Offset(2, 2),
                                blurRadius: 10,
                              ),
                            ]),
                      ),
                    ),
                    // текст с разным оформлением
                    RichText(
                        text: TextSpan(
                      style: TextStyle(
                        fontSize: 24,
                        color: green,
                      ),
                      children: [
                        const TextSpan(text: 'Oi maamme, '),
                        TextSpan(
                            text: 'Suomi',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: blue,
                            )),
                        const TextSpan(
                            text: ', synnyinmaa, soi, sana kultainen!'),
                      ],
                    )),
                    // отступ между блоками
                    const SizedBox(
                      height: 20,
                    ),
                    // строка
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // кнопка
                        InkWell(
                          child: Icon(
                            Icons.arrow_circle_left_outlined,
                            size: 50,
                            color: green,
                          ),
                          onTap: () {
                            print('Arrow left.');
                          },
                        ),
                        // кнопка
                        InkWell(
                          child: Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 50,
                            color: green,
                          ),
                          onTap: () {
                            print('Arrow right.');
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // кнопка
                        IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            CustomIcons.left_hand,
                            size: 50,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            print('Icon button custom icon left.');
                          },
                        ),
                        // кнопка
                        IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            CustomIcons.right_hand,
                            size: 50,
                            color: Colors.amber,
                          ),
                          onPressed: () {
                            print('Icon button custom icon right.');
                          },
                        ),
                      ],
                    ),
                    // отступ между блоками
                    const SizedBox(
                      height: 20,
                    ),
                    // круг
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(50),
                        transform: Matrix4.rotationZ(0.05),
                        decoration: BoxDecoration(
                          // color: green,
                          // borderRadius: BorderRadius.circular(15),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: blue,
                            width: 4,
                            style: BorderStyle.solid,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: grey900,
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: const Offset(1, 2),
                            ),
                          ],
                          gradient: RadialGradient(
                            radius: 0.7,
                            colors: [
                              green,
                              blue,
                            ],
                          ),
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            CustomIcons.left_hand,
                            size: 50,
                            color: amber50,
                          ),
                          onPressed: () {
                            print('Icon rotation');
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 200,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                                color: green,
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: amber50,
                                    fontSize: 18,
                                  ),
                                )),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                                color: blue,
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    color: amber50,
                                    fontSize: 18,
                                  ),
                                )),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                                color: grey900,
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    color: amber50,
                                    fontSize: 18,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      color: Colors.red,
                      width: 400,
                      height: 400,
                      child: Stack(
                        alignment: Alignment.center,
                        fit: StackFit.loose,
                        children: [
                          Positioned(
                            left: 100,
                            child: Container(
                              color: blue,
                              padding: const EdgeInsets.all(150),
                              child: Text('blue'),
                            ),
                          ),
                          Positioned(
                            bottom: -50,
                            child: Container(
                              color: grey900,
                              padding: const EdgeInsets.all(100),
                              child: Text('grey'),
                            ),
                          ),
                          Positioned(
                            height: 200,
                            width: 200,
                            top: 100,
                            left: -40,
                            child: Container(
                              color: green,
                              padding: const EdgeInsets.all(50),
                              child: Text('green'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: Container(
                        width: 400,
                        height: 400,
                        color: Colors.amber,
                        child: Wrap(
                          direction: Axis.horizontal,
                          spacing: 20,
                          runSpacing: 20,
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.center,
                          verticalDirection: VerticalDirection.down,
                          textDirection: TextDirection.rtl,
                          children: [
                            Container(
                              color: green,
                              width: 100,
                              height: 100,
                              child: const Text('1'),
                            ),
                            Container(
                              color: green,
                              width: 100,
                              height: 100,
                              child: const Text('2'),
                            ),
                            Container(
                              color: green,
                              width: 100,
                              height: 100,
                              child: const Text('3'),
                            ),
                            Container(
                              color: green,
                              width: 100,
                              height: 100,
                              child: const Text('4'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: Container(
                        width: 400,
                        height: 400,
                        color: Colors.pink,
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: 50,
                          runSpacing: 30,
                          alignment: WrapAlignment.spaceAround,
                          runAlignment: WrapAlignment.spaceEvenly,
                          verticalDirection: VerticalDirection.up,
                          textDirection: TextDirection.ltr,
                          children: [
                            Container(
                              color: blue,
                              width: 100,
                              height: 100,
                              child: const Text('1'),
                            ),
                            Container(
                              color: blue,
                              width: 100,
                              height: 100,
                              child: const Text('2'),
                            ),
                            Container(
                              color: blue,
                              width: 100,
                              height: 100,
                              child: const Text('3'),
                            ),
                            Container(
                              color: blue,
                              width: 100,
                              height: 100,
                              child: const Text('4'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        // scrollDirection: Axis.horizontal,
                        // reverse: true,
                        controller: ScrollController(initialScrollOffset: 100),
                        physics: BouncingScrollPhysics(),
                        itemCount: events.length,
                        itemBuilder: (_, int index) {
                          return Text(
                            events[index],
                            style: TextStyle(
                              fontSize: 30,
                              color: grey900,
                            ),
                          );
                        },
                        // children: events.map((e) => Text('$e ',
                        // style: TextStyle(
                        //   fontSize: 70,
                        //   color: grey900,
                        // ),)).toList(),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 400,
                      child: ListView.separated(
                        // scrollDirection: Axis.horizontal,
                        // reverse: true,
                        // controller: ScrollController(initialScrollOffset: 100),
                        physics: BouncingScrollPhysics(),
                        itemCount: events.length,
                        itemBuilder: (_, int index) {
                          return Text(
                            events[index],
                            style: TextStyle(
                              fontSize: 30,
                              color: blue,
                            ),
                          );
                        },
                        separatorBuilder: (_, __) {
                          return Divider(
                            color: green,
                            thickness: 10,
                          );
                        },
                        // children: events.map((e) => Text('$e ',
                        // style: TextStyle(
                        //   fontSize: 70,
                        //   color: grey900,
                        // ),)).toList(),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 500,
                      child: ListView.builder(
                        itemCount: lomatSuome.length,
                        itemBuilder: (_, int index) {
                          String name = lomatSuome[index].name;
                          String location = lomatSuome[index].location;
                          DateTime date = lomatSuome[index].startDateTime;
                          return RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              children: [
                                TextSpan(
                                  text: '$name \n',
                                  style: TextStyle(
                                    color: green,
                                  ),
                                ),
                                TextSpan(
                                  text: '$location \n',
                                  style: TextStyle(
                                    color: blue,
                                  ),
                                ),
                                TextSpan(
                                  text: '$date \n',
                                  style: TextStyle(
                                    color: grey900,
                                  ),
                                ),
                                const TextSpan(
                                  text: '___________________________',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                          // return Text(
                          //   'Loma: $name. Location: $location. Date: $date.',
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //     color: blue,
                          //   ),
                          // );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // floatingActionButton: Center(
        //   child: FloatingActionButton.extended(
        //     onPressed: () {
        //       print('Add');
        //     },
        //     backgroundColor: green,
        //     icon: Icon(
        //       Icons.add,
        //       color: amber50,
        //       size: 30,
        //     ),
        //     label: Text(
        //       'add'.toUpperCase(),
        //       style: TextStyle(
        //         color: amber50,
        //         fontSize: 30,
        //       ),
        //     ),
        //   ),
        // ),
        //bottomNavigationBar: BottomNavigationBar(items: [],),
      ),
    );
  }
}
