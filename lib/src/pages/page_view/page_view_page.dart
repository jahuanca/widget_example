import 'package:flutter/material.dart';
import 'package:widget_test/src/pages/page_view/home_screen.dart';
import 'package:widget_test/src/pages/page_view/settings_screen.dart';
import 'package:widget_test/src/pages/page_view/user_screen.dart';

class PageViewPage extends StatelessWidget {
  PageViewPage({super.key});

  final PageController pageController = PageController();

  Widget _itemNavigation({
    required BuildContext context,
    required int nextToPage,
    required String title,
    required IconData icon,
  }) {
    return ListTile(
      onTap: () {
        Navigator.pop(context);
        pageController.jumpToPage(nextToPage);
      },
      title: Text(title),
      leading: Icon(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              _itemNavigation(
                  context: context,
                  nextToPage: 0,
                  title: 'Inicio',
                  icon: Icons.home),
              _itemNavigation(
                  context: context,
                  nextToPage: 1,
                  title: 'Usuario',
                  icon: Icons.person),
              _itemNavigation(
                  context: context,
                  nextToPage: 2,
                  title: 'Configuración',
                  icon: Icons.settings),
            ],
          ),
        ),
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuario'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Configuración'),
          ],
          currentIndex: 2,
          onTap: (value) => pageController.jumpToPage(value),
        ),
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomeScreen(),
            UserScreen(),
            SettingsScreen(),
          ],
        ),
      ),
    );
  }
}
