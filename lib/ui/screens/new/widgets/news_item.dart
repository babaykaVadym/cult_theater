import 'package:flutter/material.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/news.dart';
import 'package:cult_app/resources/date_time.dart';
import 'package:cult_app/resources/screen_utils.dart';
import 'package:cult_app/ui/screens/new/widgets/news_sheet.dart';
import 'package:intl/intl.dart';

class NewsItemWidget extends StatefulWidget {
  const NewsItemWidget({super.key, required this.newsModel});

  final News newsModel;

  @override
  State<NewsItemWidget> createState() => _NewsItemWidgetState();
}

class _NewsItemWidgetState extends State<NewsItemWidget> with ScreenUtils {
  late DateTime _itemDate;

  @override
  void initState() {
    if (widget.newsModel.nwsCreatedDate != null) {
      _itemDate =
          DateTimeUtils.stringToDateTimeJS(widget.newsModel.nwsCreatedDate!);
    } else {
      _itemDate = DateTime.now();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        handleProgress(true, context);
        News? news;

        try {
          news = await getIt<NewsRepository>()
              .getNewsById(newsId: widget.newsModel.nwsId!);
        } catch (e) {
          //
        }
        handleProgress(false, context);
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext cont) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * .9,
              child: NewsSheet(
                  newsItem: news ?? widget.newsModel,
                  height: MediaQuery.of(context).size.height * .88),
            );
          },
        );
      },
      child: Container(
        height: 160,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${DateTimeUtils.getDayUkr(_itemDate.weekday)} ${DateFormat("HH:mm").format(_itemDate)}',
                    style: const TextStyle(
                      color: Color(0xFF5F5F5F),
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      widget.newsModel.nwsTitle ?? '',
                      maxLines: 2,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    widget.newsModel.nwsDescription ?? '',
                    maxLines: 5,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  const Divider()
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
