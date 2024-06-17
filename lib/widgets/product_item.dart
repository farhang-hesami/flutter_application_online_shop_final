import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216.0,
      width: 160.0,
      decoration: const BoxDecoration(
          color: Appcolors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Expanded(child: Container()),
              Image.asset(
                'assets/images/iphone.png',
              ),
              Positioned(
                top: 0.0,
                right: 10.0,
                child: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: Image.asset(
                    'assets/images/active_fav_product.png',
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Appcolors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: 7.0,
                    ),
                    child: Text(
                      '%۳',
                      style: TextStyle(
                        fontFamily: 'SB',
                        fontSize: 12.0,
                        color: Appcolors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  right: 10.0,
                  bottom: 10.0,
                ),
                child: Text(
                  'آیفون ۱۳ پرومکس',
                  style: TextStyle(
                    fontFamily: 'SM',
                    fontSize: 14.0,
                  ),
                ),
              ),
              Container(
                height: 53.0,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue,
                      blurRadius: 25.0,
                      spreadRadius: -12.0,
                      offset: Offset(
                        0.0,
                        13.0,
                      ),
                    ),
                  ],
                  color: Appcolors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        'تومان',
                        style: TextStyle(
                          color: Appcolors.white,
                          fontFamily: 'SM',
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '۴۹،۸۰۰،۰۰۰',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontFamily: 'SM',
                              fontSize: 12.0,
                              color: Appcolors.white,
                            ),
                          ),
                          Text(
                            '۴۸،۸۰۰،۰۰۰',
                            style: TextStyle(
                              fontFamily: 'SM',
                              fontSize: 16.0,
                              color: Appcolors.white,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 24.0,
                        child: Image.asset(
                          'assets/images/icon_right_arrow_circle.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
