import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../constants/colors.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            leadingWidth: width * .2,
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_sharp,
                    color: AppColors.color,
                  ),
                ),
              ),
            ),
            actions: <Widget>[
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Ionicons.heart_outline,
                  color: AppColors.color,
                ),
              )
            ],
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/shoes-4.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '\$500.24',
                  style: TextStyle(
                    color: AppColors.color,
                    fontFamily: 'Aclonica',
                    fontSize: width * .01 + 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            expandedHeight: height * .55,
          ),
        ],
      ),
    );
  }
}
