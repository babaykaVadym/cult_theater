import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cult_app/resources/constant.dart';

@RoutePage()
class WantWatchScreen extends StatelessWidget {
  const WantWatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("TiketScreen");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ХОЧУ ПОДИВИТИСЬ',
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }

  emptyState() {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        SvgPicture.asset(Constant.like, width: 100, height: 100),
        const SizedBox(
          width: 277,
          child: Text(
            'Ви ще не обрали улюблені вистави',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }

  listWidget() => Stack(
        children: [
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            bottom: 20,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.7,
                aspectRatio: .4,
                initialPage: 2,
              ),
              itemCount: 10,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                child: SizedBox(
                    child: Column(
                  children: [
                    Image.asset(
                      'assets/test.png',
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '04.10.2023 | 19:00 | 16+',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF7987A6),
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [Icon(Icons.delete)],
                    )
                  ],
                )),
              ),
            ),
          ),
        ],
      );
}
