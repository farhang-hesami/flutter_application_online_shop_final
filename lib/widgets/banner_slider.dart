import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/constants.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = PageController(viewportFraction: 0.8);
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          height: 200.0,
          child: PageView.builder(
            controller: controller,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  right: 12.0,
                ),
                child: Container(
                  height: 200.0,
                  color: Colors.red,
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 10.0,
          child: SmoothPageIndicator(
            effect: const ExpandingDotsEffect(
              dotColor: Appcolors.white,
              dotHeight: 10.0,
              dotWidth: 10.0,
              expansionFactor: 4,
              activeDotColor: Appcolors.blueIndicator,
            ),
            controller: controller,
            count: 3,
          ),
        ),
      ],
    );
  }
}
