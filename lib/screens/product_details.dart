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
                  image: AssetImage('assets/images/shoes-7.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '\$500.24',
                  style: TextStyle(
                    color: AppColors.background,
                    fontFamily: 'Aclonica',
                    fontSize: width * .01 + 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            floating: true,
            expandedHeight: height * .55,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: height * .05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Description",
                                style: TextStyle(
                                  color: AppColors.color,
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * .01 + 18,
                                  fontFamily: 'Aclonica',
                                ),
                              ),
                              Container(
                                width: 55,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: AppColors.color,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Product details",
                            style: TextStyle(
                              color: AppColors.color.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                              fontSize: width * .01 + 14,
                              fontFamily: 'Aclonica',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * .01),
                      Text(
                        """Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem dolor obcaecati natus voluptatibus, nobis culpa facilis cum, ut, molestias dolores itaque eum sint optio placeat cumque. deserunt!""",
                        style: TextStyle(
                          color: AppColors.color.withOpacity(.5),
                          fontWeight: FontWeight.normal,
                          fontSize: width * .01 + 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        width: width,
        height: height * .1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.color, width: 1.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Ionicons.chatbox_ellipses_outline,
                color: AppColors.color,
                size: width * .01 + 24,
              ),
            ),
            Container(
              height:  height * .07,
              width: width * .75,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.color, width: 1.5),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Text(
                'Add to cart',
                style: TextStyle(
                  color: AppColors.color,
                  fontSize: width * .01 + 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
