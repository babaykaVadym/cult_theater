import 'package:flutter/material.dart';
import 'package:cult_app/data/models/models.dart';

class NewsSheet extends StatefulWidget {
  const NewsSheet({super.key, required this.height, required this.newsItem});
  final double height;
  final News newsItem;
  @override
  State<NewsSheet> createState() => _NewsSheetState();
}

class _NewsSheetState extends State<NewsSheet> {
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
          if (widget.newsItem.nwsImageLink != null)
            SizedBox(
              height: 160,
              child: Image.network(widget.newsItem.nwsImageLink!),
            ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            child: Text(
              widget.newsItem.nwsTitle ?? '',
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
            height: 32,
          ),
          SizedBox(
            child: Text(
              widget.newsItem.nwsText ?? '',
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
