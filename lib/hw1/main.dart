import 'package:flutter/material.dart';

void main() {
  runApp(const Lab1App());
}

class Lab1App extends StatelessWidget {
  const Lab1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ЛР 1')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task 1:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task1(),
              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),
              Text(
                'Task 2:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task2(),
              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),
              Text(
                'Task 3:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task3(),
              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),
              Text(
                'Task 4:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task4(),
              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),
              Text(
                'Task 5:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task5(),
              const SizedBox(height: 4),
              Divider(),
              const SizedBox(height: 4),
              Text(
                'Task 6:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              task6(),
            ],
          ),
        ),
      ),
    );
  }
}

// 1. Крупный жирный заголовок: не более одной строки.
Widget task1() {
  return const Text(
    'Моё первое приложение на Flutter',
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

// 2. Курсивная подпись на тёмной подложке: не более двух строк.
Widget task2() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.grey.shade800,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      'Изучаю Flutter и создаю экран из шести независимых виджетов. '
      'Это моя первая лабораторная работа.',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.italic,
        color: Colors.white,
      ),
    ),
  );
}

// 3. Иконка с заданными цветом и размером.
Widget task3() {
  return const Icon(Icons.star, color: Colors.amber, size: 32);
}

// 4. Красное сердце без фона.
Widget task4() {
  return IconButton(
    icon: const Icon(Icons.favorite),
    iconSize: 40,
    color: Colors.red,
    tooltip: 'Добавить в избранное',
    onPressed: () {
      debugPrint('Вы добавили в избранное');
    },
  );
}

// 5. Кнопка с текстом и обводкой.
Widget task5() {
  return OutlinedButton(
    onPressed: () {
      debugPrint('Узнать детали');
    },
    child: const Text('Подробнее'),
  );
}

// 6. Polaroid: чёрная обводка и белая рамка с широким нижним краем.
Widget task6() {
  return Container(
    width: 160,
    padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.black, width: 2),
    ),
    child: Image.network(
      'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
      height: 90,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
  );
}
