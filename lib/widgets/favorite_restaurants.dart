import 'package:flutter/material.dart';
import 'package:food_panda_clone/screens/home_screen.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';

class FavRestaurants extends StatelessWidget {
  const FavRestaurants({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => HomeScreen()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: height * 0.25,
          width: double.infinity,
          decoration: BoxDecoration(
            color: MyColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Image.network(
                'https://cdn.pixabay.com/photo/2015/05/04/10/16/vegetables-752153_960_720.jpg',
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Food Delivery',
                        style: TextStyle(
                            fontFamily: Bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Order from your favorite\nrestuarant and home chefs',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
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
