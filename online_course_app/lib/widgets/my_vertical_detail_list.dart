import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyVerticalDetailList extends StatefulWidget {
  const MyVerticalDetailList({Key? key}) : super(key: key);

  @override
  State<MyVerticalDetailList> createState() => _MyVerticalDetailListState();
}

class _MyVerticalDetailListState extends State<MyVerticalDetailList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        height: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: const Color(0xFF3E3A6D),
        ),
        child: Row(
          children: [
            Container(
              height: 82,
              width: 99,
              decoration: BoxDecoration(
                color: const Color(0xFFDB61A1),
                borderRadius: BorderRadius.circular(19),
                image: const DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage(
                    'assets/images/img_saly25.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Introducing Design Graphic for Beginner',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          '12 Minutes',
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8C8C8C),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 20,
                          decoration: BoxDecoration(
                            color: const Color(0XFFDB61A1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            child: Text(
                              'free',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
