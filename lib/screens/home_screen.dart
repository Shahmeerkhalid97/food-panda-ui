import 'package:flutter/material.dart';
import 'package:food_panda_clone/constants/colors.dart';

import '../constants/constants.dart';

import '../model/panda_pick_model/panda_pick_helper.dart';
import '../model/panda_pick_model/panda_pick_item_model.dart';
import '../model/exclusive_panda_model/exclusive_helper.dart';
import '../model/exclusive_panda_model/exclusive_item_model.dart';

import '../widgets/restaurant/restaurant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    var appBar2 = AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
            size: 30,
          )),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xfff7f7f7),
                      borderRadius: BorderRadius.circular(50)),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Serch for resturants and dishes',
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
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.filter_list_outlined,
                color: MyColors.primaryColor,
              ),
              const SizedBox(
                width: 6,
              ),
            ],
          ),
        ),
      ),
      title: const Text(
        'Food Delivery',
      ),
      actions: const [
        Icon(Icons.shopping_bag_outlined),
        SizedBox(
          width: 20,
        )
      ],
    );
    return Scaffold(
      appBar: appBar2,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: height + appBar2.preferredSize.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Panda Pick',
                style: TextStyle(
                    color: blackColor, fontSize: 15, fontFamily: Bold),
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
              //2
              const Text(
                'Panda Exclusive',
                style: TextStyle(
                    color: blackColor, fontSize: 15, fontFamily: Bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: height * 0.278,
                  child: ListView.builder(
                      itemCount: ExclusiveHelper.itemCount,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        ExclusiveItemModel model =
                            ExclusiveHelper.getStatusItem(index);
                        return Restaurant(
                          name: model.name,
                          remaingTime: model.remaingTime,
                          deliveryTime: model.remaingTime,
                          deliveryPrice: model.deliveryPrice,
                          image: model.image,
                          rating: model.rating,
                          totalRating: model.totalRating,
                          subTitle: model.subTitle,
                        );
                      }),
                ),
              ),
              //3

              const Text(
                'All Restaurats',
                style: TextStyle(
                    color: blackColor, fontSize: 15, fontFamily: Bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: height * 0.278,
                  child: ListView.builder(
                      itemCount: ExclusiveHelper.itemCount,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        ExclusiveItemModel model =
                            ExclusiveHelper.getStatusItem(index);
                        return Restaurant(
                          name: model.name,
                          remaingTime: model.remaingTime,
                          deliveryTime: model.remaingTime,
                          deliveryPrice: model.deliveryPrice,
                          image: model.image,
                          rating: model.rating,
                          totalRating: model.totalRating,
                          subTitle: model.subTitle,
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
