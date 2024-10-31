import 'package:flutter/material.dart';
import 'package:flutter_template/user_interface/pages/screen/home_page.dart';
import 'package:flutter_template/user_interface/pages/screen/setting_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomState(),
    );
  }
}

class BottomState extends StatefulWidget {
  const BottomState({Key? key}) : super(key: key);

  @override
  State<BottomState> createState() => _BottomState();
}
class _BottomState extends State<BottomState> {
  static const _screens = [
    HomePage(),
    SettingPage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black, // 選択されたアイコンの色
          unselectedItemColor: Color(0x55000000), // 未選択アイコンの色
          backgroundColor: Color(0xFF38A5C6), // ナビゲーションバーの背景色

                )
          );
  }
}
