import 'package:flutter/material.dart';

class CalendarSheet extends StatefulWidget {
  const CalendarSheet({super.key, required this.height});
  final double height;
  @override
  State<CalendarSheet> createState() => _CalendarSheetState();
}

class _CalendarSheetState extends State<CalendarSheet> {
  bool showError = false;
  bool showRemoveText = false;
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SizedBox(
        height: widget.height,
        child: Column(children: [
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

          
        ]),
      ),
    );
  }
}
