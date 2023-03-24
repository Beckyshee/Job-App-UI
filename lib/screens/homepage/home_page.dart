import 'package:flutter/material.dart';
import 'package:my_project_becky/my%20home/custom_navbar.dart';
import 'package:my_project_becky/my%20home/widgets/tag_list.dart';
import 'package:my_project_becky/my%20home/widgets/job_list.dart';
import 'package:my_project_becky/my%20home/widgets/searchcard.dart';
import 'package:my_project_becky/screens/homepage/homeappbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppbar(),
              const SearchCard(),
              const TagList(),
              JobList(),
              
              const CustomBottomNavbar(),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      /*
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.grey,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: const [
          
            BottomNavigationBarItem(
              label: 'home',
              icon: Icon(
              
                Icons.home,
                size: 20,
                 ), 
                 
            ),  
            BottomNavigationBarItem(
  
              label: 'task',
              icon: Icon(
                Icons.assignment,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Text(''),
            ),
            BottomNavigationBarItem(
              label: 'daily logs',
              icon: Icon(
                Icons.assessment_outlined,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: 'profile',
              icon: Icon(
                Icons.person,
                size: 20,
              ),
            ),
          ],
        ),
      ),   

       bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.teal,
          ),
          child: NavigationBar(
            height: 60,
            selectedIndex: 0,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.assignment_ind_outlined), label: 'Task'),
              NavigationDestination(
                icon: Text(''),
                label: '',
              ),
              NavigationDestination(
                  icon: Icon(Icons.assessment_outlined), label: 'Log'),
              NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
            ],
          ),
        ), */
    );
  }
}
