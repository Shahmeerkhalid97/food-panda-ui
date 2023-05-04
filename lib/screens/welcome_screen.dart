import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';

import '../widgets/app_drawer.dart';
import '../widgets/discounts_and_shops.dart';
import '../widgets/favorite_restaurants.dart';
import '../widgets/restaurant/restaurant.dart';

import '../model/panda_pick_model/panda_pick_helper.dart';
import '../model/panda_pick_model/panda_pick_item_model.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xfff7f7f7),
                  borderRadius: BorderRadius.circular(50)),
              child: const SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Serch for shop & resturants',
                    contentPadding: EdgeInsets.only(top: 15),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.search,
                        color: Color(0xff7b7b7b),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        title: const Center(
          child: Text(
            'New York City',
          ),
        ),
        actions: const [
          Icon(Icons.shopping_bag_outlined),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FavRestaurants(height: height),
            const SizedBox(
              height: 20,
            ),
            DiscountsAndShops(height: height),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Your daily deals',
              style:
                  TextStyle(color: blackColor, fontSize: 15, fontFamily: Bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: height * 0.278,
                child: ListView.builder(
                    itemCount: PandaPickHelper.itemCount,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      PandaPickItemModel model =
                          PandaPickHelper.getStatusItem(index);
                      return Restaurant(
                        name: model.name,
                        remaingTime: model.remaingTime,
                        deliveryTime: model.remaingTime,
                        deliveryPrice: model.deliveryPrice,
                        image: model.image,
                        rating: model.ratting,
                        totalRating: model.totalRating,
                        subTitle: model.subTitle,
                      );
                    }),
              ),
            ),
          ],
        ),
      )),
      drawer: const AppDrawer(),
    );
  }
}
