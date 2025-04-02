//import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../layouts/export.dart';
import 'MenuButton.dart';
import 'UpgradeSection.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Dashboard',
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF0F2F5),
        fontFamily: 'Roboto',
      ),
      home: 
      DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}
class _DashboardScreenState extends State<DashboardScreen> {
   final List<Widget> _pages = [
    PerformanceView(),
    ToolsView(),
    CoursesView(),
    CommentView(),
    ResourceView(),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(0),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 4,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  // Left Sidebar
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        // Course Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.circle, color: Colors.blue, size: 16),
                                  const SizedBox(width: 8),
                                  Text('Course', style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        // Menu items
                        MenuButton(
                          icon: Icons.bar_chart,
                          text: 'Performance',
                          isSelected: _selectedIndex == 0,
                          //iconBackgroundColor: Colors.blue,
                          onTap: () {
                            _onItemTapped(0);
                          },
                          
                        ),
                        MenuButton(
                          icon: Icons.book_outlined,
                          text: 'Courses',
                          isSelected: _selectedIndex == 1,
                          onTap: () {
                            _onItemTapped(1);
                          },
                        ),
                        MenuButton(
                          icon: Icons.chat_outlined,
                          text: 'Comment',
                          isSelected: _selectedIndex == 2,
                          onTap: () {
                            _onItemTapped(2);
                          },
                        ),
                        MenuButton(
                          icon: Icons.build_outlined,
                          text: 'Tools',
                          isSelected: _selectedIndex == 3,
                          onTap: () {
                            _onItemTapped(3);
                          },
                        ),
                        MenuButton(
                          icon: Icons.folder_outlined,
                          text: 'Resources',
                          isSelected: _selectedIndex == 4,
                          onTap: () {
                            _onItemTapped(4);
                          },
                        ),
                        Spacer(),
                        // Upgrade section
                        UpgradeSection(),
                      ],
                    ),
                  ),
                  // Main Content
                  MainContent(
                    child: Expanded(child: _pages[_selectedIndex]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  final  Widget child;
  const MainContent({super.key, this.child = const Placeholder()});


  @override
  Widget build(BuildContext context) {
    return child;
  }
}












