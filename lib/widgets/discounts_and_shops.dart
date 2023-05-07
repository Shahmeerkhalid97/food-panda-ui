import 'package:flutter/material.dart';

import '../constants/constants.dart';

class DiscountsAndShops extends StatelessWidget {
  const DiscountsAndShops({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: height * 0.35,
            decoration: BoxDecoration(
              color: const Color(0xfffed271),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/pandamart.jpg'),
                ),
                Positioned(
                  bottom: 30,
                  left: 10,
                  child: Text(
                    'Pandamart',
                    style: TextStyle(
                      color: blackColor,
                      fontFamily: Bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    'panda20 for 20% off',
                    style: TextStyle(
                      color: blackColor,
                      fontFamily: Medium,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.18,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffef9fc4),
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/food.jpg',
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: 'Pick-Up\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: Bold,
                              fontSize: 18,
                            )),
                        TextSpan(
                            text: 'Up-to 50% off',
                            style: TextStyle(
                              color: blackColor,
                              fontFamily: Medium,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ))
                      ])),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: height * 0.15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff85bfff),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: 'Shop\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: Bold,
                              fontSize: 18,
                            )),
                        TextSpan(
                            text: 'Everyday essential',
                            style: TextStyle(
                              color: blackColor,
                              fontFamily: Medium,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ))
                      ])),
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
