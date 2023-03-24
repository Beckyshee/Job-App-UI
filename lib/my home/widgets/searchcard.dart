import 'package:flutter/material.dart';
import 'package:my_project_becky/my%20home/models/search/search_page.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 40,
        ),
        height: 300,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              image: AssetImage('assets/search_bg.png'), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'fast search',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'search for the job that matches your skillset',
              style: TextStyle(
                height: 1.8,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SearchPage()));
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(children: [
                  Image.asset(
                    "assets/icons/search.png",
                    width: 20,
                  ),
                  const SizedBox(width: 10),
                  /* Text(
                    'search',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18,
                    ),
                  ), */
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search...",
                    ),
                  ))
                ]),
              ),
            ),
          ],
        ));
  }
}
