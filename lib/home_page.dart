import 'package:flutter/material.dart';
import 'package:food_appdesign_ui_template/weigits/carts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const Color primaryRed = Color(0xFFE8433A);

  void _onTabTapped(int index) {
    switch (index) {
      case 0:
        // already on Home — do nothing
        break;
      // case 1:
      //   Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
      //   break;
      // case 2:
      //   Navigator.push(context, MaterialPageRoute(builder: (_) => const DocumentsScreen()));
      //   break;
      // case 3:
      //   Navigator.push(context, MaterialPageRoute(builder: (_) => const FavoritesScreen()));
      //   break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CutomBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryRed,
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white, size: 32),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: primaryRed,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(icon: Icons.home_outlined, index: 0),
              _buildNavItem(icon: Icons.person_outline, index: 1),
              const SizedBox(width: 40),
              _buildNavItem(icon: Icons.description_outlined, index: 2),
              _buildNavItem(icon: Icons.favorite_border, index: 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({required IconData icon, required int index}) {
    final bool isSelected = _selectedIndex == index;
    return IconButton(
      icon: Icon(icon),
      color: isSelected ? Colors.white : Colors.white70,
      iconSize: 26,
      onPressed: () => _onTabTapped(index),
    );
  }
}

// cutom body

class CutomBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CutomBodState();
}

class CutomBodState extends State<CutomBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage("assets/images/Foodgo_black.png")),
                SizedBox(width: 160),
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("assets/images/girl.png"),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text(
                    "Order your favourite food!",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 310,
                  height: 60,
                  child: SearchBar(
                    hintText: 'Search...',
                    leading: const Icon(Icons.search),
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    onChanged: (value) {
                      // handle input
                    },
                    onSubmitted: (value) {
                      // handle submit
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFE8433A),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  width: 70,
                  height: 60,
                  child: Center(
                    child: Icon(
                      Icons.align_horizontal_left_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE8433A),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      width: 100,
                      height: 50,
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(184, 158, 158, 158),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      width: 100,
                      height: 50,
                      child: Center(
                        child: Text(
                          "Combos",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(184, 158, 158, 158),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      width: 100,
                      height: 50,
                      child: Center(
                        child: Text(
                          "Sliders",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(184, 158, 158, 158),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      width: 100,
                      height: 50,
                      child: Center(
                        child: Text(
                          "trending",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(184, 158, 158, 158),
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                      width: 100,
                      height: 50,
                      child: Center(
                        child: Text(
                          "Special",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Carts(
            "assets/images/image6.png",
            "Cheeseburger",
            "Wendy's Burger",
          ),Carts(
            "assets/images/image6.png",
            "Cheeseburger",
            "Wendy's Burger",
          ),
            ],),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Carts(
            "assets/images/image6.png",
            "Cheeseburger",
            "Wendy's Burger",
          ),Carts(
            "assets/images/image6.png",
            "Cheeseburger",
            "Wendy's Burger",
          ),
            ],),SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Carts(
            "assets/images/image6.png",
            "Cheeseburger",
            "Wendy's Burger",
          ),Carts(
            "assets/images/image6.png",
            "Cheeseburger",
            "Wendy's Burger",
          ),
            ],),SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Carts(
          "assets/images/image6.png",
          "Cheeseburger",
          "Wendy's Burger",
        ),Carts(
          "assets/images/image6.png",
          "Cheeseburger",
          "Wendy's Burger",
        ),
          ],)
          ],
        ),
      ),
    );
  }
}
