import 'package:flutter/material.dart';
import 'package:cult_app/data/models/models.dart';

class TrypaItemSheet extends StatefulWidget {
  const TrypaItemSheet(
      {super.key, required this.height, required this.actorItem});
  final double height;
  final Actor actorItem;
  @override
  State<TrypaItemSheet> createState() => _TrypaItemSheetState();
}

class _TrypaItemSheetState extends State<TrypaItemSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset: true,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: widget.height,
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    size: 32,
                  ))
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          if (widget.actorItem.thEmpImageLink != null)
            SizedBox(
              width: 375,
              height: 160,
              child: Image.network(widget.actorItem.thEmpImageLink!),
            ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            child: Text(
              widget.actorItem.thEmpName ?? '',
              maxLines: 2,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 1,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 315,
            child: Text(
              widget.actorItem.thEmpDescription ?? '',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 1,
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'БІОГРАФІЯ',
            style: TextStyle(
              color: Color(0xFF5F5F5F),
              fontSize: 10,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Text(
              widget.actorItem.thEmpBiography ?? '',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
