import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/category_course_widget.dart';
import '../components/drawer_app.dart';
import '../components/information_course.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List categoryList = [
    [
      "Figma UI/UX",
      "assets/images/figma_logo.svg",
      const Color(0xFFFCE3DB),
      "16 Classes",
      4.9
    ],
    [
      "XD UI/UX",
      "assets/images/xdlogo.svg",
      const Color(0xFFACA0FF),
      "24 Classes",
      4.3
    ],
    [
      "Photoshop \n UI/UX",
      "assets/images/adobe.svg",
      const Color(0xFF1ABCFE),
      "11 Classes",
      3.4
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const DrawerApp()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(color: Colors.white, width: 1.5),
                        ),
                        child: const Icon(Icons.list, color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.white, width: 1.5),
                      ),
                      child: const Icon(Icons.person, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Find your favorite \ncourse",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 340,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            suffixIcon: Icon(Icons.search,
                                size: 50, color: Colors.grey[800]),
                            hintText: "Search for course"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Top Category",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        )),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),

                // ListView ------------------------------------
                Container(
                  height: 120,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList.length,
                      itemBuilder: (context, index) {
                        return CategoryCourseWidget(
                          nameCourse: categoryList[index][0],
                          asset: categoryList[index][1],
                          color: categoryList[index][2],
                        );
                      }),
                ),

                ///*************************************************************** */
                ///
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                // ListView ------------------------------------
                Container(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList.length,
                      itemBuilder: (context, index) {
                        return InformationCouseWidget(
                          nameCourse: categoryList[index][0],
                          asset: categoryList[index][1],
                          aulas: categoryList[index][3],
                          rating: categoryList[index][4],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
