import 'package:flutter/material.dart';

class MessageSheet extends StatefulWidget {
  const MessageSheet({super.key, required this.height});
  final double height;
  @override
  State<MessageSheet> createState() => _MessageSheetState();
}

class _MessageSheetState extends State<MessageSheet> {
  bool showError = false;
  bool showRemoveText = false;
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset: true,
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
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            width: 375,
            height: 160,
            child: Image.asset("assets/test2.jpeg"),
          ),
          const SizedBox(
            height: 32,
          ),
          const SizedBox(
            width: 315,
            child: Text(
              'Хто хоче зіграти в президента?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const SizedBox(
            width: 315,
            child: Text(
              '«Хто хоче зіграти в президента» – це шпигунська комедія, де у головній ролі виступає президент неназваної європейської держави. Однієї доленосної ночі він одночасно стикається зі своєю дружиною та своєю коханкою. ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                height: 1.1,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 315,
            child: Text(
              'Йому доведеться зробити не тільки любовний, але й політичний вибір, від якого буде залежати майбутнє країни.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                height: 1.1,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
