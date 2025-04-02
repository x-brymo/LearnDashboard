import 'package:flutter/material.dart';
import '../layouts/Profile_view.dart';
import 'CourseCard.dart';
import 'DayColumn.dart';
import 'LearningItem.dart';

class PerformanceWidget extends StatelessWidget {
  const PerformanceWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          // Courses Section
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5F7FB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Text(
                    'Course Activity',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'June 28th, 2020',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  const SizedBox(height: 20),
                  // Add Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                  // Courses Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Courses',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 10),
                          Icon(Icons.arrow_back, size: 16),
                          Icon(Icons.arrow_forward, size: 16),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.menu, size: 16, color: Colors.blue),
                                Text('2', style: TextStyle(color: Colors.blue)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Course Cards
                  Expanded(
                    child: ListView(
                      children: [
                        CourseCard(
                          title: 'How to grow your Facebook Page',
                          description: 'Follow these easy and simple steps',
                          number: '12',
                          color: Colors.blue,
                          icon: Icons.trending_up,
                        ),
                        const SizedBox(height: 16),
                        CourseCard(
                          title: 'Grow your Community',
                          description: 'Follow these easy and simple steps',
                          number: '7',
                          color: Colors.purple,
                          icon: Icons.people_outline,
                        ),
                        const SizedBox(height: 16),
                        CourseCard(
                          title: 'Data Science Bootcamp',
                          description: 'Follow these easy and simple steps',
                          number: '17',
                          color: Colors.amber,
                          icon: Icons.bar_chart_outlined,
                          isFull: true,
                        ),
                        const SizedBox(height: 16),
                        CourseCard(
                          title: 'Target Audience Training',
                          description: 'Follow these easy and simple steps',
                          number: '21',
                          color: Colors.redAccent,
                          icon: Icons.circle,
                          isFull: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Right Panel
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.keyboard_arrow_left, color: Colors.grey),
                      const SizedBox(width: 20),
                      Icon(Icons.notifications_outlined, color: Colors.grey),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          showBottomSheet(context: context, builder: (BuildContext context) {
                            return ProfileView();
                            
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text('MH', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // My Learning
                  Text(
                    'My learning',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 16),
                  // Learning Items
                  LearningItem(
                    icon: Icons.circle,
                    color: Colors.redAccent,
                    title: 'Target Audience Training',
                    description: 'Save time and make your business seen to right people',
                    progress: 53,
                  ),
                  const SizedBox(height: 16),
                  LearningItem(
                    icon: Icons.code,
                    color: Colors.blue,
                    title: 'The Complete Web...',
                    description: 'Learn Web Development by building 25 websites...',
                    progress: 75,
                  ),
                  const SizedBox(height: 16),
                  LearningItem(
                    icon: Icons.groups,
                    color: Colors.purple,
                    title: 'Grow your Community',
                    description: 'Follow these easy and simple steps',
                    progress: 14,
                  ),
                  const SizedBox(height: 30),
                  // Planning
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Planning',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[600]),
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_back, size: 16, color: Colors.grey),
                          const SizedBox(width: 5),
                          Icon(Icons.arrow_forward, size: 16, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Week Tabs
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('This week', style: TextStyle(fontWeight: FontWeight.bold)),
                          Container(
                            height: 2,
                            width: 60,
                            color: Colors.black,
                            margin: const EdgeInsets.only(top: 5),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Text('Next week', style: TextStyle(color: Colors.grey)),
                      const SizedBox(width: 20),
                      Text('This Month', style: TextStyle(color: Colors.grey)),
                      const SizedBox(width: 20),
                      Text('This Year', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Calendar
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.withOpacity(0.2)),
                      ),
                      child: Column(
                        children: [
                          // Days
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                DayColumn(day: 'M'),
                                DayColumn(day: 'T'),
                                DayColumn(day: 'W'),
                                DayColumn(day: 'Th'),
                                DayColumn(day: 'Fr'),
                                DayColumn(day: 'Sa'),
                              ],
                            ),
                          ),
                          // Schedule items
                          Expanded(
                            child: Stack(
                              children: [
                                // Time markers
                                Positioned(
                                  left: 10,
                                  top: 20,
                                  bottom: 20,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('07:00', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                      Text('08:00', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                      Text('09:00', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                      Text('10:00', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                      Text('11:00', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                      Text('12:00', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                    ],
                                  ),
                                ),
                                // Event blocks
                                Positioned(
                                  left: 50,
                                  right: 10,
                                  top: 10,
                                  bottom: 10,
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      // Green block
                                      Row(
                                        children: [
                                          const SizedBox(width: 120),
                                          Expanded(
                                            child: Container(
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Colors.green.withOpacity(0.4),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.access_time, size: 14, color: Colors.green),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      // Yellow block
                                      Container(
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Don't forget to call John...",
                                            style: TextStyle(fontSize: 10, color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      // Purple block
                                      Row(
                                        children: [
                                          const SizedBox(width: 60),
                                          Expanded(
                                            child: Container(
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Colors.purple,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      // Red block
                                      Row(
                                        children: [
                                          const SizedBox(width: 40),
                                          Expanded(
                                            child: Container(
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 50),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}