// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCourseWidget extends StatelessWidget {
  final String nameCourse;
  final String asset;
  final Color color;

  const CategoryCourseWidget({
    Key? key,
    required this.nameCourse,
    required this.asset,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        width: 130,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white,
            width: 1.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(asset),
            const SizedBox(
              height: 10,
            ),
            Text(nameCourse,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                )),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Course",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
