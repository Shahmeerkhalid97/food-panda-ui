import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_panda_clone/constants/colors.dart';

import '../../constants/constants.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({
    super.key,
    required this.name,
    required this.remaingTime,
    required this.deliveryTime,
    required this.deliveryPrice,
    required this.image,
    required this.rating,
    required this.totalRating,
    required this.subTitle,
  });
  final String name,
      remaingTime,
      deliveryTime,
      deliveryPrice,
      image,
      rating,
      totalRating,
      subTitle;

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.3,
      width: width * 0.6,
      // decoration: BoxDecoration(border: Border.all()),
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    widget.image,
                    height: height * 0.185,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: const BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(top: 7, left: 5, right: 10, bottom: 7),
                    child: Text(
                      'Flash 20% off',
                      style: TextStyle(
                          color: Colors.white, fontFamily: Bold, fontSize: 10),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 15,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 6),
                      child: Text(
                        widget.remaingTime,
                        style: const TextStyle(
                          color: blackColor,
                          fontFamily: Bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    color: Color(
                      0xff323232,
                    ),
                    fontSize: 14,
                    fontFamily: Bold,
                  ),
                ),
                const Spacer(),
                RatingBarIndicator(
                  rating: 2.75,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 1,
                  itemSize: 18.0,
                  direction: Axis.horizontal,
                ),
                Text(
                  ' ${widget.rating}  ',
                  style: const TextStyle(
                    color: Color(
                      0xff323232,
                    ),
                    fontSize: 12,
                    fontFamily: Bold,
                  ),
                ),
                Text(
                  '(${widget.totalRating})',
                  style: const TextStyle(
                    color: Color(
                      0xffa9a9a9,
                    ),
                    fontSize: 12,
                    fontFamily: Medium,
                  ),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              r"$ ." + widget.subTitle,
              style: const TextStyle(
                color: Color(
                  0xff707070,
                ),
                fontSize: 13,
                fontFamily: Medium,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.directions_bike,
                  size: 15,
                  color: MyColors.primaryColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  r"Rs" + widget.deliveryPrice,
                  style: const TextStyle(
                    color: Color(
                      0xff707070,
                    ),
                    fontSize: 13,
                    fontFamily: Medium,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
