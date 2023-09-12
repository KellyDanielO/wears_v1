import 'package:flutter/material.dart';
import 'package:wears/constants/colors.dart';

import '../controllers/utls_controller.dart';
import '../screens/product_details.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  final double width;
  final double height;
  const ProductCard(
      {super.key,
      required this.name,
      required this.image,
      required this.price,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    final UtlsControllers _utlControllers = UtlsControllers();
    return Container(
      margin: const EdgeInsets.only(right: 10),
      // width: width * .5,
      // height: height * .3,
      decoration: BoxDecoration(
        color: AppColors.color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                  color: AppColors.background,
                  fontWeight: FontWeight.w600,
                  fontSize: width * .01 + 16,
                  fontFamily: 'Aclonica'),
            ),
            SizedBox(
              width: width * .45,
              height: height * .25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * .01),
            SizedBox(
              width: width * .45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "\$$price",
                    style: TextStyle(
                      color: AppColors.background,
                      fontWeight: FontWeight.w600,
                      fontSize: width * .01 + 18,
                      fontFamily: 'Aclonica',
                    ),
                  ),
                  GestureDetector(
                    onTap: () =>
                        _utlControllers.moveTo(const ProductDetails(), context),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: AppColors.color,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
