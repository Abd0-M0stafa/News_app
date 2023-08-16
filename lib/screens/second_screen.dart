import 'package:flutter/material.dart';
import 'package:news_app/used_widgets/compo.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 7),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 40,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.close),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: ' COVID New Variant',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    costumContainer(
                        text: 'Filter',
                        colortext: Colors.white,
                        colorbox: const Color(0xffff4e57),
                        onpressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, top: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Center(
                                          child: Container(
                                            height: 5,
                                            width: 82,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: const Color(0xffC5C5C5)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'Filter',
                                              style: TextStyle(
                                                fontFamily: 'Nunito-Bold',
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const Spacer(),
                                            OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                side: const BorderSide(
                                                    width: 1.0,
                                                    color: Colors.black),
                                              ),
                                              child: const Row(
                                                children: [
                                                  Icon(
                                                    Icons.delete_outline,
                                                    color: Colors.black,
                                                  ),
                                                  Text(
                                                    'Reset',
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 12),
                                          child: Text(
                                            'Sort By',
                                            style: TextStyle(
                                              fontFamily: 'Nunito-Bold',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            outlinedfour(
                                                text: 'Recomended',
                                                color: Colors.black),
                                            const Spacer(),
                                            outlinedfour(
                                                text: 'Latest',
                                                color: Colors.black),
                                            const Spacer(),
                                            outlinedfour(
                                                text: 'Most Viewed',
                                                color: Colors.black),
                                            const Spacer(
                                              flex: 2,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            outlinedfour(
                                                text: 'Channel',
                                                color: Colors.black),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: outlinedfour(
                                                  text: 'Following',
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 60),
                                          child: Center(
                                            child: SizedBox(
                                              height: 48,
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                const Color(
                                                                    0xffff4e57)),
                                                    shape: MaterialStateProperty
                                                        .all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ))),
                                                onPressed: () {},
                                                child: const Text(
                                                  'SAVE',
                                                  style: TextStyle(
                                                    fontFamily: 'Nunito-Bold',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        }),
                    costumContainer(
                        text: 'Healthy',
                        colortext: Colors.black,
                        colorbox: Colors.white,
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
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    'About 11,130,000 results for ',
                    style: TextStyle(
                      fontFamily: 'Nunito-Bold',
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Color(0xff2E0505),
                    ),
                  ),
                  Text(
                    'COVID New Variant',
                    style: TextStyle(
                      fontFamily: 'Nunito-Bold',
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff2E0505),
                    ),
                  ),
                ],
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
                itemCount: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
