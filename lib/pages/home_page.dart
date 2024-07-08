// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ui_layout/components/GroceryItemField.dart';
import 'package:ui_layout/models/cart_model.dart';
import 'package:ui_layout/pages/cart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey[800],
          onPressed: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CartPage();
          })),
          child: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: 36.0,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            //The greetings
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Hello There!',
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            //sub title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Let us order fresh items for you.',
                style: GoogleFonts.notoSerif(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            //divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Divider(
                thickness: 2,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            //fresh items + grid.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Fresh Items',
                style: GoogleFonts.notoSerif(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //The grid
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.shopItems.length,
                    padding: EdgeInsets.all(12),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.3,
                    ),
                    itemBuilder: (context, index) {
                      return Groceryitemfield(
                        name: value.shopItems[index][0],
                        price: value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                        onTapped: () {
                          Provider.of<CartModel>(context, listen: false).addItems(index);
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
