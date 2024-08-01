import 'package:flutter/material.dart';

class SitaBayWidget extends StatefulWidget {
  const SitaBayWidget(
      {super.key,
      required this.rowIndex,
      required this.selectSits,
      required this.isBaing,
      required this.sitsIndex,
      required this.isSelect});
  final int rowIndex;
  final int sitsIndex;
  final Function selectSits;
  final bool isBaing;
  final bool isSelect;

  @override
  State<SitaBayWidget> createState() => _SitaBayWidgetState();
}

class _SitaBayWidgetState extends State<SitaBayWidget> {
  late Color sitColor;
  bool isSecelt = false;

  selectColor() {
    switch (widget.rowIndex) {
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
  }

  @override
  void initState() {
    selectColor();

    isSecelt = widget.isSelect;

    super.initState();
  }

  @override
  void didUpdateWidget(covariant SitaBayWidget oldWidget) {
    setState(() {
      isSecelt = widget.isSelect;
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 21,
      height: 32,
      child: GestureDetector(
        onTap: widget.isBaing
            ? null
            : () {
                setState(() {
                  widget.selectSits();
                  isSecelt = !isSecelt;
                });
              },
        child: widget.isBaing
            ? const Icon(
                Icons.close,
                size: 20,
              )
            : Container(
                width: 21,
                height: 32,
                decoration: ShapeDecoration(
                  color: isSecelt ? Colors.red : sitColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child:
                    Center(child: Text(isSecelt ? "${widget.sitsIndex}" : "", style: TextStyle(fontSize: 12),)),
              ),
      ),
    );
  }
}
