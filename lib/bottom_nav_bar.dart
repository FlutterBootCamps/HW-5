import 'package:flutter/material.dart';
import 'package:git_it_app_example/home_screen.dart';
import 'package:git_it_app_example/favorite_screen.dart';


class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int selectedScreen = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const FavoriteScreen(), 
  ];
  List color = [
    Colors.amber,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            
      body: screens[selectedScreen],
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor:Color.fromARGB(255, 229, 233, 237),
        items: const  [
          BottomNavigationBarItem(
            icon: Icon(Icons.house_rounded, size: 40,), 
            label: "Home",
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, size: 40,), 
            label: "Favorite Recipes",
            ),
          
        ],
        currentIndex: selectedScreen,
        onTap: (int index){
          selectedScreen = index ;
          setState((){            
          }); 
        },
        selectedItemColor: color[selectedScreen],
      
      ) ,
    );
  }
}

class FavoriteRecipes {
  const FavoriteRecipes();
}
