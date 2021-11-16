import 'package:flutter/material.dart';
import '../screens/settings_screen.dart';
import '../screens/account_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabScreen_State createState() => _TabScreen_State();
}

class _TabScreen_State extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': SettingsScreen(), 'title': 'Settings'},
    {'page': AccountScreen(), 'title': 'Account'}
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectedPageIndex]['title'].toString()),
        ),
        drawer: Drawer(),
        body: _pages[_selectedPageIndex]['page'] as Widget,
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).accentColor,
            onTap: _selectPage,
            currentIndex: _selectedPageIndex,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(
                    Icons.settings_suggest_outlined,
                    color: Colors.grey,
                    size: 40,
                  ),
                  title: Text('Settings')),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.grey,
                    size: 40
                  ),
                  title: Text('Account'))
            ]));
  }
}
