// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:netflix/presentation/search/widgets/title.dart';
import '../../../core/constants.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/etj8E2o0Bud0HkONVQPjyCkIvpv.jpg';

class SearchIdWidget extends StatelessWidget {
  const SearchIdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        SearchTextTitle(title: 'Top Searches'),
        kHight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) => TopSearchItem(),
            separatorBuilder: (ctx, index) => kHight20,
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class TopSearchItem extends StatelessWidget {
  const TopSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        Expanded(
          child: Text(
            "Movie Name",
            style: TextStyle(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: kWhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 23,
            child: Center(
              child: Icon(
                CupertinoIcons.play_fill,
                color: kWhiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
