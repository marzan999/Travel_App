// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/model/travel.dart';

class TravelBlog extends StatefulWidget {
  const TravelBlog({super.key});

  @override
  State<TravelBlog> createState() => _TravelBlogState();
}

class _TravelBlogState extends State<TravelBlog> {
  final travel_list = Travel.generatedTravelList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: travel_list.length,
          itemBuilder: ((context, index) {
            var travel = travel_list[index];
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset(
                    travel.image,
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 30,
                  child: Column(
                    children: [
                      Text(
                        travel.name,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 20,
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.arrow_forward),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                )
              ],
            );
          })),
    );
  }
}
