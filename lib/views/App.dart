import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './Route.dart';
import './theme.dart';
import './home/index.dart';
import './my/index.dart';
import './profile/index.dart';

List<AppRoute> routes = [
  AppRoute(
      key: 'my', icon: Icon(Icons.note_outlined), title: 'my', widget: My()),
  AppRoute(
      key: 'home',
      icon: Icon(Icons.library_books_outlined),
      title: 'home',
      widget: Home()),
  AppRoute(
      key: 'profile',
      icon: Icon(Icons.person_outlined),
      title: 'profile',
      widget: Profile())
];

class App extends StatefulWidget {
  @override
  _AppState createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riddle',
      theme: ThemePresets.themeLight,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate, // 指定本地化的字符串和一些其他的值
        GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
        GlobalWidgetsLocalizations.delegate // 指定默认的文本排列方向, 由左到右或由右到左
      ],
      supportedLocales: [Locale("en"), Locale("zh")],
      home: Scaffold(
          body: routes[this._currentIndex].widget,
          bottomNavigationBar: BottomNavigationBar(
              onTap: (int index) {
                setState(() {
                  this._currentIndex = index;
                });
              },
              currentIndex: this._currentIndex,
              items: List.from(routes.map((r) =>
                  BottomNavigationBarItem(icon: r.icon, label: r.title))))),
    );
  }
}
