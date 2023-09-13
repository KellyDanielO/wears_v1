import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            CupertinoIcons.arrow_left,
            color: AppColors.color,
          ),
        ),
        leadingWidth: width * .07,
        title: Container(
          height: height * .05,
          decoration: BoxDecoration(
            color: AppColors.color,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(
                Icons.search,
                size: width * .01 + 22,
                color: AppColors.background.withOpacity(.6),
              ),
              SizedBox(width: width * .02),
              Expanded(
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: AppColors.background.withOpacity(.7),
                        fontSize: width * .01 + 14,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 0)),
                  style: TextStyle(
                    color: AppColors.background,
                    fontSize: width * .01 + 14,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
