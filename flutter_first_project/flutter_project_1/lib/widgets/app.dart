import 'package:flutter/material.dart';

// цвета
Color colorAmber50 = Colors.amber.shade50;
Color colorAmber = Colors.amber.shade900;
Color colorPink = Colors.pink;
Color colorPinkAccent = Colors.pinkAccent;
Color colorPink100 = Colors.pink.shade100;
Color colorPink900 = Colors.pink.shade900;
Color colorblue = Colors.blue;
Color colorBlue100 = Colors.blue.shade100;
Color colorBlue900 = Colors.blue.shade900;
Color colorGrey900 = Colors.grey.shade900;

class FirstMap extends StatelessWidget {
  const FirstMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // основной виджет
    return MaterialApp(
        // убирает красную полоску в верхнем углу
        debugShowCheckedModeBanner: false,
        // скелет приложения
        home: Scaffold(
          // AppBar добавляет простанство вверху
          // аналогично SafeArea
          // appBar: AppBar(),
          // фон приложения
          backgroundColor: colorAmber50,
          // избегает интерфейсов операционной системы
          // безопасная зона отображения приложения
          body: SingleChildScrollView(
            child: SafeArea(
                // общие отступы Padding
                child: Column(
              // выравнивание элементов
              crossAxisAlignment: CrossAxisAlignment.start,
              // всегда построчная вёрстка!!!
              children: [
                // row - столбец
                // кнопки назад и поиск
                const _PanelUp(),
                // отступы между строками
                const SizedBox(height: 20),
                // титульный текст
                const _TitleText(),
                // отступы между строками
                const SizedBox(height: 20),
                // строка цветных блоков
                Row(
                  // выравнивание
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    // розовый блок
                    // создан класс ниже в коде
                    // нижнее подчеркивание скрывает видимость в других файлах
                    _PinkBlock(),
                    // голубой блок
                    _BlueBlock(),
                  ],
                ),
                const SizedBox(height: 20),
                // расписание
                const _Scedulle(),
                // отступы
                const SizedBox(height: 20),
                // дни
                const _Dates(),
                // отступы
                const SizedBox(height: 20),
                // доступные слоты
                const _AvailableStots(),
                // отступы
                const SizedBox(height: 20),
                const _AvailableTimes(),
                // отступы
                const SizedBox(height: 20),
              ],
            )),
          ),
        ));
  }
}

class _Text extends StatelessWidget {
  final String text;
  final dynamic style = TextStyle;
  const _Text({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        // настройка текста
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: colorblue,
          fontSize: 28,
          shadows: [
            Shadow(
              // color: Colors.blue.withOpacity(0.5),
              color: colorPink900,
              offset: const Offset(1, 1),
              blurRadius: 7,
            ),
          ],
        ));
  }
}

class _Icon extends StatelessWidget {
  final dynamic icon;
  final dynamic color;
  const _Icon({
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        size: 30,
        color: colorAmber50,
        shadows: [
          Shadow(
            // color: Colors.blue.withOpacity(0.5),
            color: color,
            offset: const Offset(1, 1),
            blurRadius: 4,
          ),
        ],
      ),
    );
  }
}

class _Star extends StatelessWidget {
  final Color color;
  const _Star({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      size: 20,
      color: color,
    );
  }
}

class _Calendare extends StatelessWidget {
  final String date;
  final String day;
  const _Calendare({
    Key? key,
    required this.date,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colorPinkAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date.toUpperCase(),
            style: TextStyle(
              color: colorAmber50,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            day.toUpperCase(),
            style: TextStyle(
              color: colorAmber50,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _Slot extends StatelessWidget {
  final double timeStart;

  final double timeEnd;
  const _Slot({
    Key? key,
    required this.timeStart,
    required this.timeEnd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          '${timeStart.toStringAsFixed(2)} - ${timeEnd.toStringAsFixed(2)}',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: colorAmber50,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _PanelUp extends StatelessWidget {
  const _PanelUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorblue,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          // выравнивание элементов
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _Icon(icon: Icons.arrow_back, color: colorAmber50),
            _Icon(icon: Icons.search, color: colorAmber50),
            // иконка без отступов
            // InkWell(
            //     // функуия по клику
            //     onTap: () {},
            //     // настройка иконки
            //     child: Icon(
            //       Icons.arrow_back,
            //       size: 30,
            //       color: colorAmber50,
            //     )),
            // InkWell(
            //     onTap: () {},
            //     child: Icon(
            //       // настройка иконки
            //       Icons.search,
            //       size: 30,
            //       color: colorAmber50,
            //     )),
            // иконка с отступом
            // IconButton(
            //     onPressed: () {},
            //     icon: const Icon(
            //         // настройка иконки
            //         Icons.arrow_back,
            //         size: 30,
            //         color: Colors.indigo)),
            // IconButton(
            //     onPressed: () {},
            //     icon: const Icon(
            //       // настройка иконки
            //       Icons.search,
            //       size: 30,
            //       color: Colors.indigo,
          ],
        ),
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: _Text(text: 'Title'),
    );
  }
}

class _PinkBlock extends StatelessWidget {
  const _PinkBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> starsPink = [];

    for (var i = 0; i < 5; i++) {
      final result = _Star(color: colorAmber);
      starsPink.add(result);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        // размеры блока
        width: 160,
        height: 250,
        // внешний вид блока
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorPink100,
        ),
        // отступы
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          // столбцы
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // иконка лицо
              Icon(
                Icons.face_retouching_natural,
                size: 100,
                color: colorPink,
              ),
              // имя
              Text(
                'Woman Name',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: colorAmber50,
                  shadows: [
                    Shadow(
                      // color: Colors.blue.withOpacity(0.5),
                      color: colorPink900,
                      offset: const Offset(1, 1),
                      blurRadius: 8,
                    ),
                  ],
                ),
              ),
              // отступы
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: starsPink,
              ),
              // опыт работы
              Text(
                'Work experience.',
                style: TextStyle(
                  color: colorAmber50,
                  fontSize: 16,
                  shadows: [
                    Shadow(
                      // color: Colors.blue.withOpacity(0.5),
                      color: colorPink900,
                      offset: const Offset(1, 1),
                      blurRadius: 1,
                    ),
                  ],
                ),
              ),
              // отступы нижних иконок
              // разные отступы по горизонту и вертикали
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _Icon(icon: Icons.phone, color: colorPink900),
                  _Icon(icon: Icons.mail, color: colorPink900),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BlueBlock extends StatelessWidget {
  const _BlueBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> starsBlue = [];

    for (var i = 0; i < 5; i++) {
      if (i < 4) {
        final result = _Star(color: colorAmber);
        starsBlue.add(result);
      } else {
        final result = _Star(color: colorGrey900);
        starsBlue.add(result);
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        // размеры блока
        width: 160,
        height: 250,
        // внешний вид блока
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorBlue100,
        ),
        // отступы
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          // столбцы
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // иконка лицо
              Icon(
                Icons.face_outlined,
                size: 100,
                color: colorblue,
              ),
              // имя
              Text(
                'Man Name',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: colorAmber50,
                  shadows: [
                    Shadow(
                      // color: Colors.blue.withOpacity(0.5),
                      color: colorBlue900,
                      offset: const Offset(1, 1),
                      blurRadius: 8,
                    ),
                  ],
                ),
              ),
              // отступы
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: starsBlue,
              ),
              // опыт работы
              Text(
                'Work experience.',
                style: TextStyle(
                  color: colorAmber50,
                  fontSize: 16,
                  shadows: [
                    Shadow(
                      // color: Colors.blue.withOpacity(0.5),
                      color: colorBlue900,
                      offset: const Offset(1, 1),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
              // отступы нижних иконок
              // разные отступы по горизонту и вертикали
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _Icon(icon: Icons.phone, color: colorBlue900),
                  _Icon(icon: Icons.mail, color: colorBlue900),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Scedulle extends StatelessWidget {
  const _Scedulle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _Text(text: 'Scedulle'),
          _Text(text: 'date'),
        ],
      ),
    );
  }
}

class _Dates extends StatelessWidget {
  const _Dates({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // список виджетов для записи результата
    final List<Widget> calendareDate = [];

    // массив значений
    // можно создавать список List
    final Map<String, String> calendareMap = {
      '1': 'm',
      '2': 't',
      '3': 'w',
      '4': 't',
      '5': 'f',
    };

    // перебор значений массива и запись в пустой список
    // для List перебор сделать через for in
    calendareMap.forEach(
      (key, value) {
        final result = _Calendare(date: key, day: value);
        calendareDate.add(result);
      },
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: calendareDate,
      ),
    );
  }
}

class _AvailableStots extends StatelessWidget {
  const _AvailableStots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: const [_Text(text: 'Available slots')],
      ),
    );
  }
}

class _AvailableTimes extends StatelessWidget {
  const _AvailableTimes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // список виджетов для записи результата
    final List<Widget> slotsTime = [];

    // список начальных значений
    List<double> time = [9.00, 10.00, 11.00, 12.00, 15.00, 17.00];

    // перебор значений из списка
    // запись результат в пустой список
    for (var hour in time) {
      final result = _Slot(timeStart: hour, timeEnd: (hour + 1));
      slotsTime.add(result);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        // распределяет элементы по максимальной ширине !!!
        width: double.maxFinite,
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          runSpacing: 40,
          children: slotsTime,
        ),
      ),
    );
  }
}
