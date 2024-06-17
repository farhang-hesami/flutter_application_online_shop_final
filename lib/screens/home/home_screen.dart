import 'package:flutter/material.dart';
import 'package:flutter_application_online_shop_final/main.dart';

import '../../constants/constants.dart';
import '../../widgets/banner_slider.dart';
import '../../widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundScreenColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 44.0,
                  right: 44.0,
                  bottom: 32.0,
                  top: 15.0,
                ),
                child: Container(
                  height: 46.0,
                  decoration: const BoxDecoration(
                    color: Appcolors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 16.0),
                      Image.asset(
                        'assets/images/icon_apple_blue.png',
                      ),
                      const Expanded(
                        child: Text(
                          'جستجوی محصولات',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'SB',
                            color: Appcolors.gray,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Image.asset(
                        'assets/images/icon_search.png',
                      ),
                      const SizedBox(width: 16.0),
                    ],
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: BannerSlider(),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 44.0,
                  right: 44.0,
                  bottom: 20.0,
                  top: 32.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'دسته بندی',
                      style: TextStyle(
                        fontFamily: 'SB',
                        fontSize: 12.0,
                        color: Appcolors.gray,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 44.0,
                ),
                child: SizedBox(
                  height: 100.0,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: CategoryHorizontalItemList(),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 44.0,
                  right: 44.0,
                  bottom: 20.0,
                  top: 10.0,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_left_categroy.png'),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text(
                      'مشاهده همه',
                      style: TextStyle(
                        fontFamily: 'SB',
                        color: Appcolors.blue,
                        fontSize: 12.0,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'پرفروشترین ها',
                      style: TextStyle(
                        fontFamily: 'SB',
                        fontSize: 12.0,
                        color: Appcolors.gray,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 44.0),
                child: SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: ProductItem(),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 44.0,
                  right: 44.0,
                  bottom: 20.0,
                  top: 32.0,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_left_categroy.png'),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text(
                      'مشاهده همه',
                      style: TextStyle(
                        fontFamily: 'SB',
                        color: Appcolors.blue,
                        fontSize: 12.0,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'پربازدیدترین ها',
                      style: TextStyle(
                        fontFamily: 'SB',
                        fontSize: 12.0,
                        color: Appcolors.gray,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 44.0),
                child: SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: ProductItem(),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
