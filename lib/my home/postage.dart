// ignore_for_file: unnecessary_string_escapes
/*
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_project_becky/my%20home/models/jobcard.dart';

class PostJobPage extends StatefulWidget {
  const PostJobPage({Key? key}) : super(key: key);
  static String routeName = "/postjob";
  @override
  State<PostJobPage> createState() => _PostJobPageState();
}

class _PostJobPageState extends State<PostJobPage> {
  final List jobsForYou = [
    //[companyName, jobTitle, imagePath, Location, paymentDetails]
    [
      'james & son',
      'stone mason',
      'image',
      'kingongo',
      'daily basis',
      'bring your own tools',
      45
    ],
    [
      'james & son',
      'stone mason',
      'image',
      'kingongo',
      'daily basis',
      'bring your own tools',
      80
    ],
    [
      'james & son',
      'stone mason',
      'image',
      'kingongo',
      'daily basis',
      'bring your own tools',
      95
    ],
    [
      'james & son',
      'stone mason', 
      'image',
      'kingongo',
      'daily basis',
      'bring your own tools',
      45
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          const SizedBox(height: 75),

          //appbar

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: const Icon(Icons.menu_outlined),
            ),
          ),
          const SizedBox(height: 25),

          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover a new path',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          const SizedBox(height: 25),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(
                          12,
                        )),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 30,
                            child: const Icon(Icons.search),
                          ),
                        ),
                        const Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for a job...'),
                        )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.star_rounded),
                )
              ],
            ),
          ),

          //for u job cards
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'For You',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          
          const SizedBox(height: 50),
          //recently added jobs
         
          

          Container(
            height: 160,
            child: ListView.builder(
                itemCount: jobsForYou.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return JobCard(
                    companyName: jobsForYou[index][0],
                    jobTitle: jobsForYou[index][1],
                    image: jobsForYou[index][2],
                    location: jobsForYou[index][3],
                    paymentDetails: jobsForYou[index][4],
                    toolsNeeded: jobsForYou[index][5],
                  );
                })),
          ),
        ],
        
      ),
      
    );
  }

//BOTTOM NAVBAR CODE THROWING ERRORS

    bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        items: [],
      ),
}   */
