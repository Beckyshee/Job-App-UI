import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              hintText: 'search',
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
              contentPadding: EdgeInsets.zero,
              prefixIcon: Container(
                padding: const EdgeInsets.all(15),
                width: 20,
                child: Image.asset('assets/icons/search.png'),
              ),
            ),
          )),
          const SizedBox(width: 10),
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Image.asset('assets/icons/filter.png'),
          ),
        ],
      ),
    );
  }
}
