import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/fourth_screen.dart';
import 'package:news_app/screens/second_screen.dart';
import 'package:news_app/screens/third_screen.dart';
import 'package:news_app/used_widgets/compo.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 300,
            height: 65,
            padding: const EdgeInsets.only(top: 10),
            margin: const EdgeInsets.only(left: 27),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Column(
                    children: [
                      Icon(Icons.home_outlined,
                          size: 30, color: Color(0xffff4e57)),
                      Text(
                        'Home',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffff4e57)),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Secondscreen();
                    }));
                  },
                  child: const Column(
                    children: [
                      Icon(Icons.favorite_outline,
                          size: 30, color: Color(0xffa6a6a6)),
                      Text(
                        'Favorite',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffa6a6a6)),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ThirdtScreen();
                    }));
                  },
                  child: const Column(
                    children: [
                      Icon(
                        Icons.person_3_outlined,
                        size: 30,
                        color: Color(0xffa6a6a6),
                      ),
                      Text(
                        'Profile',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffa6a6a6)),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const FourthScreen();
                    }));
                  },
                  child: const Column(
                    children: [
                      Icon(
                        Icons.text_decrease,
                        size: 30,
                        color: Color(0xffa6a6a6),
                      ),
                      Text(
                        'Docs',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffa6a6a6)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      height: 32,
                      width: 296,
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          labelText: ' Dogecion to the Moon...',
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 32,
                      width: 33,
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                width: 50,
                                height: 48,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 8),
                                decoration: ShapeDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment(0.87, -0.49),
                                      end: Alignment(-0.87, 0.49),
                                      colors: [
                                        Color(0xFFFF3A44),
                                        Color(0xFFFF7F85)
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100)))),
                          ),
                          Positioned(
                              height: 32,
                              width: 33,
                              child: Image.asset('images/Vector.png')),
                          Positioned(
                              top: -7,
                              left: 3,
                              height: 32,
                              width: 33,
                              child: Image.asset('images/Ellipse 4.png')),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const Text(
                      'Latest News',
                      style: TextStyle(
                        fontFamily: 'NewYorkSmallRegular',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Text(
                            'See All',
                            style: TextStyle(
                              color: Color(0xff0080FF),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xff0080FF),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        scrollRow(
                            context: context,
                            image: 'images/man.png',
                            text1: 'by Ryan Browne\n',
                            text2:
                                'Crypto investors should be\nprepared to lose all their money,\nBOE governor says',
                            text3:
                                '“I’m going to say this very bluntly again,” he added. “Buy them\nonly if you’re prepared to lose all your money.”'),
                    options: CarouselOptions(
                      height: 240,
                      viewportFraction: 0.91,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    )),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      costumContainer(
                          text: 'Healthy',
                          colortext: Colors.white,
                          colorbox: const Color(0xffff4e57),
                          onpressed: () {}),
                      costumContainer(
                          text: 'Technology',
                          colortext: Colors.black,
                          colorbox: Colors.white,
                          onpressed: () {}),
                      costumContainer(
                          text: 'Finace',
                          colortext: Colors.black,
                          colorbox: Colors.white,
                          onpressed: () {}),
                      costumContainer(
                          text: 'Arts',
                          colortext: Colors.black,
                          colorbox: Colors.white,
                          onpressed: () {}),
                      costumContainer(
                          text: 'Sports',
                          colortext: Colors.black,
                          colorbox: Colors.white,
                          onpressed: () {})
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => scrollcolumn(
                      context: context,
                      image: 'images/nature.png',
                      text1:
                          '5 things to know about the\n\'conundrum\' of lupus\n',
                      text2: 'Matt Villano\n',
                      text3: 'Sunday, 9 May 2021\n'),
                  itemCount: 4,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
