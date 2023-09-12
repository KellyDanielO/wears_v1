// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../constants/colors.dart';
import '../widget/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Search Product',
          style: TextStyle(color: AppColors.color, fontSize: width * .01 + 16),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              print('object');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 35,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppColors.color,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  SizedBox(height: height * .005),
                  Container(
                    width: 25,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppColors.color,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  SizedBox(height: height * .005),
                  Container(
                    width: 15,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppColors.color,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            SizedBox(height: height * .02),
            Container(
              decoration: BoxDecoration(
                color: AppColors.color,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    size: width * .01 + 22,
                    color: AppColors.background.withOpacity(.6),
                  ),
                  SizedBox(width: width * .02),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: AppColors.background.withOpacity(.7),
                      fontSize: width * .01 + 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * .02),
            // TabBar Area
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'All',
                        style: TextStyle(
                          color: AppColors.color,
                          fontSize: width * .01 + 14,
                        ),
                      ),
                    ),
                    SizedBox(width: width * .0),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'Man',
                        style: TextStyle(
                          color: AppColors.background,
                          fontSize: width * .01 + 14,
                        ),
                      ),
                    ),
                    SizedBox(width: width * .0),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'Woman',
                        style: TextStyle(
                          color: AppColors.background,
                          fontSize: width * .01 + 14,
                        ),
                      ),
                    ),
                    SizedBox(width: width * .0),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'Kids',
                        style: TextStyle(
                          color: AppColors.background,
                          fontSize: width * .01 + 14,
                        ),
                      ),
                    ),
                    SizedBox(width: width * .0),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'New',
                        style: TextStyle(
                          color: AppColors.background,
                          fontSize: width * .01 + 14,
                        ),
                      ),
                    ),
                    SizedBox(width: width * .02),
                  ],
                ),
              ),
            ),
            // TabBar Area End
            // New Release Section
            SizedBox(height: height * .04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'New Release',
                  style: TextStyle(
                      color: AppColors.color, fontSize: width * .01 + 16),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Sort By',
                      style: TextStyle(
                          color: AppColors.color, fontSize: width * .01 + 14),
                    ),
                    Icon(
                      Ionicons.caret_down_outline,
                      size: width * .01 + 16,
                      color: AppColors.color.withOpacity(.5),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: height * .01),
            // Products
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    height: height,
                    width: width,
                    image: 'assets/images/shoes-1.jpg',
                    name: 'Lorem Ipsum',
                    price: '500',
                  ),
                  ProductCard(
                    height: height,
                    width: width,
                    image: 'assets/images/shoes-2.jpg',
                    name: 'Lorem Ipsum',
                    price: '700',
                  ),
                  ProductCard(
                    height: height,
                    width: width,
                    image: 'assets/images/shoes-3.jpg',
                    name: 'Lorem Ipsum',
                    price: '500',
                  ),
                ],
              ),
            ),
            // New Release End
            // Most Popular Section
            SizedBox(height: height * .04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Most Popular',
                  style: TextStyle(
                      color: AppColors.color, fontSize: width * .01 + 16),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Sort By',
                      style: TextStyle(
                          color: AppColors.color, fontSize: width * .01 + 14),
                    ),
                    Icon(
                      Ionicons.caret_down_outline,
                      size: width * .01 + 16,
                      color: AppColors.color.withOpacity(.5),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: height * .01),
            // Products
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    height: height,
                    width: width,
                    image: 'assets/images/shoes-4.jpg',
                    name: 'Lorem Ipsum',
                    price: '500',
                  ),
                  ProductCard(
                    height: height,
                    width: width,
                    image: 'assets/images/shoes-5.jpg',
                    name: 'Lorem Ipsum',
                    price: '700',
                  ),
                  ProductCard(
                    height: height,
                    width: width,
                    image: 'assets/images/shoes-3.jpg',
                    name: 'Lorem Ipsum',
                    price: '500',
                  ),
                ],
              ),
            ),
            // New Release End
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: width,
        height: height * .08,
        alignment: Alignment.center,
        child: Container(
          width: width * .8,
          height: height * .07,
          decoration: BoxDecoration(
            color: AppColors.color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.background,
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Ionicons.home_outline,
                    color: AppColors.color,
                    size: width * .01 + 20,
                  ),
                ),
              ),
              Container(
                width: 45,
                height: 45,
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Ionicons.search,
                    color: AppColors.background,
                    size: width * .01 + 20,
                  ),
                ),
              ),
              Container(
                width: 45,
                height: 45,
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Ionicons.heart_outline,
                    color: AppColors.background,
                    size: width * .01 + 20,
                  ),
                ),
              ),
              Container(
                width: 45,
                height: 45,
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Ionicons.cart_outline,
                    color: AppColors.background,
                    size: width * .01 + 20,
                  ),
                ),
              ),
              Container(
                width: 45,
                height: 45,
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Ionicons.person_outline,
                    color: AppColors.background,
                    size: width * .01 + 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
