import 'package:flutter/material.dart';
import 'package:cult_app/ui/theater/cubit/theater_cubit.dart';

class SeatPriceWidget extends StatefulWidget {
  const SeatPriceWidget({super.key, required this.listPrice});
  final List<TiketPricse> listPrice;

  @override
  State<SeatPriceWidget> createState() => _SeatPriceWidgetState();
}

class _SeatPriceWidgetState extends State<SeatPriceWidget> {
  Color selectColor(int index) {
    late Color sitColor;
    switch (index) {
      case 1:
        sitColor = Colors.black;
        break;
      case 2:
        sitColor = const Color.fromRGBO(40, 61, 109, 1);

        break;
      case 3:
        sitColor = const Color.fromRGBO(40, 61, 109, 1);
        break;

      case 4:
        sitColor = const Color.fromRGBO(122, 136, 167, 1);
        break;
      case 5:
        sitColor = const Color.fromRGBO(122, 136, 167, 1);
        break;
      case 6:
        sitColor = const Color.fromRGBO(122, 136, 167, 1);
        break;
      case 7:
        sitColor = const Color.fromRGBO(168, 181, 211, 1);
        break;
      case 8:
        sitColor = const Color.fromRGBO(168, 181, 211, 1);
        break;
      case 9:
        sitColor = const Color.fromRGBO(168, 181, 211, 1);
        break;
      case 10:
        sitColor = const Color.fromRGBO(212, 216, 226, 1);
        break;
    }

    return sitColor;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 12,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: widget.listPrice
              .map((e) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: selectColor(e.indexRow)),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        (e.price / 100).toStringAsFixed(0),
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      )
                    ],
                  )))
              .toList(),
        ));
  }
}
