import 'package:flutter/material.dart';

class SearchSheet extends StatefulWidget {
  const SearchSheet({super.key, required this.height});
  final double height;
  @override
  State<SearchSheet> createState() => _SearchSheetState();
}

class _SearchSheetState extends State<SearchSheet> {
  bool showError = false;
  bool showRemoveText = false;
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SizedBox(
        height: widget.height,
        child: Stack(children: [
          Positioned(
              top: 10,
              left: 10,
              right: 10,
              child: Row(
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
              )),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ПОШУК',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  TextField(
                    controller: _searchController,
                    onChanged: (v) {
                      if (v.isNotEmpty) {
                        setState(() {
                          showRemoveText = true;
                        });
                      } else {
                        setState(() {
                          showRemoveText = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        suffix: showRemoveText
                            ? GestureDetector(
                                onTap: () {
                                  _searchController.text = '';
                                  setState(() {
                                    showRemoveText = false;
                                  });
                                },
                                child: const Icon(Icons.clear))
                            : null),
                  ),
                  if (showError) ...[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ууупс',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 313,
                          child: Text(
                            'Ми не знайшли вистав з такою назвою. Спробуйте щось інше.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )
                      ],
                    )
                  ]
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
