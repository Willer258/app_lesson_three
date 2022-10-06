import '/screens/favorites_screen.dart';
import 'package:flutter/material.dart';
import '/screens/categories_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.category,
                ),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                ),
                text: 'Favories',
              )
            ]),
            title: const Text('Meals'),
          ),
          body: const TabBarView(
            children: [CategoriesScreen(), FavoritesScreen()],
          ),
        ));
  }
}
