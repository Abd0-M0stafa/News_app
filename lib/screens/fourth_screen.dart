import 'package:flutter/material.dart';
import 'package:news_app/used_widgets/compo.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xff2E0505),
            ),
            onPressed: () {}),
        title: const Padding(
          padding: EdgeInsets.only(left: 58),
          child: Text(
            'Hot Updates',
            style: TextStyle(color: Color(0xFFFF3A44)),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                compofour(
                    image: 'images/man2.png',
                    text1: 'Monday, 10 May 2021',
                    text2:
                        'WHO classifies triple-mutant Covid variant from India as global health risk',
                    text3:
                        'A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a fekefihefwhefwuihfwebefwiuhwefiuewfbiwejfbniwjgebnrweuihbweiogubwegiuhegwiunegwiounwegiouweghouigwehoweghweohewgohjewgophegwpoewghoweghegwophewg',
                    text4: 'Published by Berkeley Lovelace Jr.'),
                compofour(
                    image: 'images/wedding.png',
                    text1: 'Sunday, 9 May 2021',
                    text2:
                        'What to do if you\'re planning or attending a wedding during the pandemic',
                    text3:
                        'They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding fahfeiouhguiohsehnseguhnjsnusehiubaefyawfyugawfuvbawbawfhbawvffjhvbajkbkbuiki',
                    text4: 'Published by Kristen Rogers'),
              ],
            ),
          )),
    );
  }
}
