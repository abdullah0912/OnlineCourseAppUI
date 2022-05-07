import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course_app/screens/screens.dart';
import 'package:online_course_app/widgets/my_horizontal_list.dart';
import 'package:online_course_app/widgets/my_vertical_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 20, right: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const CourseDetailScreen()),
                      ),
                    );
                  },
                  child: Text(
                    'Master Class',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 349,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return const MyHorizontalList(
                    startColor: 0xFF9288E4,
                    endColor: 0xFF534EA7,
                    courseHeadline: 'Recommended',
                    courseTitle: 'UI/UX DESIGNER\nBEGINNER',
                    courseImage: 'assets/images/img_saly10.png',
                  );
                },
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free online class',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'From over 80 lectures',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF9C9A9A),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return const MyVerticalList(
                  courseImage: 'assets/images/img_saly24.png',
                  courseTitle: 'Flutter Developer',
                  courseDuration: '8 Hours',
                  courseRating: 3.0,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
