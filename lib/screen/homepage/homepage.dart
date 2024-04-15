import 'package:flutter/material.dart';

import 'widget/categories.dart';
import 'widget/custom_app_bar.dart';
import 'widget/product_grid.dart';
import 'widget/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 8,
                ),
                NewsSlider(size: size),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomIconButton(
                          text: 'My Profile',
                          icon: Icons.emoji_people,
                          color: Colors.green,
                          bgColor: Colors.green.shade100,
                        ),
                        CustomIconButton(
                          text: 'Favorite',
                          icon: Icons.favorite,
                          color: Colors.red,
                          bgColor: Colors.red.shade100,
                        ),
                        CustomIconButton(
                          text: 'My Orders',
                          icon: Icons.shopping_cart_rounded,
                          color: Colors.blue,
                          bgColor: Colors.blue.shade100,
                        ),
                        CustomIconButton(
                          text: 'Web',
                          icon: Icons.web,
                          color: Colors.brown,
                          bgColor: Colors.brown.shade100,
                        ),
                      ],
                    ),
                  ),
                ),
                const Categories(),
                const ProductGrid()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      required this.text,
      required this.icon,
      this.color = Colors.blue,
      this.bgColor = Colors.blue});

  final String text;
  final IconData icon;
  final Color color;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            backgroundColor: bgColor,
            child: Icon(
              icon,
              color: color,
            )),
        Text(
          text,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.w600, color: Colors.grey),
        )
      ],
    );
  }
}
