import 'package:donut_app_8sc/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //donut tab
    const MyTab(iconPath: 'lib/icons/donut.png', iconName: 'Donuts'),
    //burger tab
    const MyTab(iconPath: 'lib/icons/burger.png', iconName: 'Burgers'),
    //smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png', iconName: 'Smoothies'),
    //pancake tab
    const MyTab(iconPath: 'lib/icons/pancakes.png', iconName: 'Pancakes'),
    //pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png', iconName: 'Pizza'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          actions: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          children: [
            //1. texto principal
            Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  Text('I want to ', style: TextStyle(fontSize: 24)),
                  Text(
                    'Eat',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            //2. pestañas (TabBar)
            TabBar(tabs: myTabs),

            //3. Contenido de pestañas (TabBarView)

            //4. Carrito (Cart)
          ],
        ),
      ),
    );
  }
}
