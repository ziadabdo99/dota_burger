import 'package:dota_burger/features/home/views/widgets/card_item.dart';
import 'package:dota_burger/features/home/views/widgets/food_category.dart';
import 'package:dota_burger/features/home/views/widgets/search_field.dart';
import 'package:dota_burger/features/home/views/widgets/user_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../product/views/product_details_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController searchController = TextEditingController();

  List<String> categories = ["All", "Combos", "Sliders", "Classic"];

  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              floating: true,
              pinned: true,
              snap: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              scrolledUnderElevation: 0,
              toolbarHeight: 160,
              flexibleSpace: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40),
                child: Column(
                  children: [
                    UserHeader(),
                    Gap(10),
                    SearchField(searchController: searchController),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Gap(10),
                    FoodCategory(
                      categories: categories,
                      categoryIndex: categoryIndex,
                    ),
                    Gap(20),
                  ],
                ),
              ),
            ),

            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(childCount: 6, (
                  context,
                  index,
                ) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsView(),
                        ),
                      );
                    },
                    child: CardItem(
                      image: 'assets/test/t1.png',
                      text: 'Cheeseburger',
                      desc: 'Wendy\'s Burger',
                      rate: '4.8',
                    ),
                  );
                }),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .71,
                  mainAxisSpacing: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
