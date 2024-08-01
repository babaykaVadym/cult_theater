import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cult_app/resources/constant.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("TiketScreen");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: const Text(
          'КОНТАКТИ',
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            itemView(
              "EMAIL",
              GestureDetector(
                onTap: () async {
                  final Uri emailLaunchUri = Uri(
                    scheme: 'mailto',
                    path: 'theatre.cult.ua@gmail.com',
                  );

                  launchUrl(emailLaunchUri);
                },
                child: const Text(
                  'theatre.cult.ua@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF283D6D),
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
            itemView(
                'СОЦІАЛЬНІ МЕРЕЖІ',
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () async {
                          String url =
                              "https://instagram.com/theatre_cult?igshid=YmMyMTA2M2Y=";

                          if (!await launchUrl(Uri.parse(url))) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: SvgPicture.asset(Constant.instagram,
                            width: 20, height: 20)),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                        onTap: () async {
                          String url = 'https://t.me/CULTTHEATRE';

                          if (!await launchUrl(Uri.parse(url))) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: SvgPicture.asset(Constant.telegram,
                            width: 20, height: 20)),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                        onTap: () async {
                          String url =
                              'https://www.youtube.com/channel/UCYTMPWJvt8f2_ah1-96QvaA';
                          if (!await launchUrl(Uri.parse(url))) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: SvgPicture.asset(Constant.youtube,
                            width: 20, height: 20)),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                        onTap: () async {
                          String url = 'https://www.facebook.com/theatercult';

                          if (!await launchUrl(Uri.parse(url))) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: SvgPicture.asset(Constant.fb,
                            width: 20, height: 20)),
                  ],
                )),
            itemView(
                'ТЕЛЕФОН',
                GestureDetector(
                  onTap: () async {
                    final Uri launchUri = Uri(
                      scheme: 'tel',
                      path: '+380951136467',
                    );
                    await launchUrl(launchUri);
                  },
                  child: const Text(
                    '+ 380 95 113 64 67',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF283D6D),
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                )),
            itemView(
              'АДРЕСА',
              const Text(
                'м.Київ вул. Чикаленка 14',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            TextButton(
                onPressed: () async {
                  String googleUrl =
                      'https://maps.app.goo.gl/hjVtf6Bp3FmgYAiS9';
                  if (!await launchUrl(Uri.parse(googleUrl))) {
                    throw Exception('Could not launch $googleUrl');
                  }
                },
                child: const Text("Переглянути на карті")),
            Container(
              height: 200,
              width: 320,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(18)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                'assets/Rectangle.png',
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }

  itemView(String label, Widget bottomWidget) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF5F5F5F),
            fontSize: 10,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        bottomWidget,
        const SizedBox(
          height: 20,
        ),
        const Divider(),
      ],
    );
  }
}
