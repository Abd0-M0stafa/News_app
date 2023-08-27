import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

Widget scrollRow({
  required BuildContext context,
  required String image,
  required String text1,
  required String text2,
  required String text3,
}) {
  return Stack(
    children: [
      SizedBox(
        width: 321,
        height: 240,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: text1,
                      style: const TextStyle(
                          fontFamily: 'Nunito-Bold',
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                    TextSpan(
                      text: text2,
                      style: const TextStyle(
                          fontFamily: 'NewYorkSmallRegular',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                  ]),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                text3,
                style: const TextStyle(
                  fontFamily: 'Nunito-Bold',
                  fontSize: 8.5,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Widget costumContainer({
  required String text,
  required Color colorbox,
  required Color colortext,
  required onpressed,
}) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        height: 40,
        child: ElevatedButton(
          onPressed: onpressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: colorbox,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: colortext,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget scrollcolumn(
    {required BuildContext context,
    required NetworkImage image,
    required String text1,
    required String text2,
    required String text3}) {
  return SizedBox(
    width: double.infinity,
    height: 128,
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          height: 128,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: SizedBox(
            height: 128,
            width: 325,
            child: Positioned(
              top: 10,
              left: 20,
              child: Text(
                text1,
                style: const TextStyle(
                  fontFamily: 'NewYorkSmallRegular',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget compofour(
    {required String image,
    required String text1,
    required String text2,
    required String text3,
    required String text4}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        width: double.infinity,
        height: 128,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          text1,
          style: const TextStyle(
            fontFamily: 'Nunito-Bold',
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Color(0xff2E0505),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          text2,
          style: const TextStyle(
            fontFamily: 'NewYorkSmallRegular',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff2E0505),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ExpandableText(
          text3,
          expandText: 'show more',
          collapseText: 'show less',
          maxLines: 4,
          linkColor: const Color(0xFFFF3A44),
          style: const TextStyle(
            fontFamily: 'Nunito-Bold',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff2E0505),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Text(
          text4,
          style: const TextStyle(
            fontFamily: 'Nunito-Bold',
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color(0xff2E0505),
          ),
        ),
      ),
    ],
  );
}

Widget outlinedfour({required String text, required Color color}) {
  return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: color),
      ),
      onPressed: () {});
}
