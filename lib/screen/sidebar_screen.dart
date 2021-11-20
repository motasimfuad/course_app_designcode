import 'package:courses_app_designcode/components/sidebar_row.dart';
import 'package:courses_app_designcode/constants.dart';
import 'package:courses_app_designcode/model/sidebar.dart';
import 'package:flutter/material.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(
          vertical: 35,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
            color: kSidebarBackgroundColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(34),
            )),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 21,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Motasim Fuad',
                      style: kHeadlineLabelStyle,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'License ends in 21 Jan, 2021',
                      style: kSearchPlaceholderStyle,
                    ),
                  ],
                )
              ],
            ),
            Center(
              child: SidebarRow(
                item: sidebarItem[2],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
