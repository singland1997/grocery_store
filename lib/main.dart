import 'package:flutter/material.dart';
import 'package:grocery_store/controllers/change_screen/change_screen.dart';
import 'package:grocery_store/controllers/change_theme_mode/change_theme_mode.dart';
import 'package:grocery_store/screens/buyers/account/account.dart';
import 'package:grocery_store/screens/buyers/cart/cart.dart';
import 'package:grocery_store/screens/buyers/category/category.dart';
import 'package:grocery_store/screens/buyers/home/home.dart';
import 'package:grocery_store/screens/buyers/store/store.dart';
import 'package:provider/provider.dart';

main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChangeThemeMode(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChangeScreen(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List<Widget> _screens = const [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grovery Store',
      themeMode: Provider.of<ChangeThemeMode>(context).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
            Switch(
              value: Provider.of<ChangeThemeMode>(context).isDark,
              onChanged: (value) {
                Provider.of<ChangeThemeMode>(context, listen: false)
                    .changeTheme();
              },
            )
          ],
        ),
        body: _screens[Provider.of<ChangeScreen>(context).currentIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: Provider.of<ChangeScreen>(context).currentIndex,
          onDestinationSelected: (value) {
            Provider.of<ChangeScreen>(context, listen: false).change(value);
          },
          height: 60,
          destinations: const [
            NavigationDestination(
              label: 'HOME',
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
            ),
            NavigationDestination(
              label: 'CATEGORY',
              selectedIcon: Icon(Icons.category),
              icon: Icon(Icons.category_outlined),
            ),
            NavigationDestination(
              label: 'STORE',
              selectedIcon: Icon(Icons.store),
              icon: Icon(Icons.store_outlined),
            ),
            NavigationDestination(
              label: 'CART',
              selectedIcon: Icon(Icons.shopping_cart),
              icon: Icon(Icons.shopping_cart_outlined),
            ),
            NavigationDestination(
              label: 'ACCOUNT',
              selectedIcon: Icon(Icons.account_circle),
              icon: Icon(Icons.account_circle_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
