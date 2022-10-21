// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/model/travel.dart';

class MostPopular extends StatefulWidget {
  const MostPopular({super.key});

  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  final travel_list = Travel.mostPopular();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            var travel = travel_list[index];
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    travel.image,
                    height: 150,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 45,
                  left: 15,
                  child: Column(
                    children: [
                      Text(
                        travel.name,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: travel_list.length),
    );
  }
}
