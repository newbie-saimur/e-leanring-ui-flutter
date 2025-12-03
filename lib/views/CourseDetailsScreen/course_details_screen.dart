import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/widgets/custom_app_bar.dart';
import 'package:e_learning_ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CourseDetailsScreen extends StatefulWidget {
  final String courseName;
  const CourseDetailsScreen({super.key, required this.courseName});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController _controller;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _controller =
        VideoPlayerController.networkUrl(
            Uri.parse(
              'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
            ),
          )
          ..initialize().then((_) {
            // _controller.play();
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {});
          });
  }

  @override
  void dispose() {
    _controller.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    Map courseDetails = {
      "courseName": "Figma UI UX Design Essentials",
      "author": "Saimur Rahman",
      "ratings": 4.8,
      "durationTotalHours": 72,
      "priceUSD": 40,
      "modules": [
        {
          "moduleName": "Introduction",
          "moduleDuration": "2 Min 18 Sec",
          "completed": true,
        },
        {
          "moduleName": "What is UI UX design?",
          "moduleDuration": "18 Min 46 Sec",
          "completed": false,
        },
        {
          "moduleName": "How to make wireframe",
          "moduleDuration": "20 Min 58 Sec",
          "completed": false,
        },
        {
          "moduleName": "Your first design",
          "moduleDuration": "15 Min 30 Sec",
          "completed": false,
        },
        {
          "moduleName": "Mastering Auto Layout",
          "moduleDuration": "25 Min 12 Sec",
          "completed": false,
        },
        {
          "moduleName": "Creating Components and Variants",
          "moduleDuration": "32 Min 45 Sec",
          "completed": false,
        },
        {
          "moduleName": "Prototyping Interactive Flows",
          "moduleDuration": "28 Min 05 Sec",
          "completed": false,
        },
        {
          "moduleName": "Design Systems Principles",
          "moduleDuration": "12 Min 50 Sec",
          "completed": false,
        },
        {
          "moduleName": "Working with Constraints and Resizing",
          "moduleDuration": "19 Min 22 Sec",
          "completed": false,
        },
        {
          "moduleName": "Typography and Color Theory",
          "moduleDuration": "14 Min 08 Sec",
          "completed": false,
        },
        {
          "moduleName": "Accessibility in UI Design",
          "moduleDuration": "21 Min 15 Sec",
          "completed": false,
        },
        {
          "moduleName": "Mobile Design Best Practices",
          "moduleDuration": "26 Min 38 Sec",
          "completed": false,
        },
        {
          "moduleName": "Web Design Grids",
          "moduleDuration": "17 Min 55 Sec",
          "completed": false,
        },
        {
          "moduleName": "Plugin Power-Up",
          "moduleDuration": "10 Min 40 Sec",
          "completed": false,
        },
        {
          "moduleName": "User Research Fundamentals",
          "moduleDuration": "35 Min 18 Sec",
          "completed": false,
        },
        {
          "moduleName": "Information Architecture",
          "moduleDuration": "16 Min 03 Sec",
          "completed": false,
        },
        {
          "moduleName": "Usability Testing Methods",
          "moduleDuration": "29 Min 59 Sec",
          "completed": false,
        },
        {
          "moduleName": "Handoff to Developers",
          "moduleDuration": "23 Min 10 Sec",
          "completed": false,
        },
        {
          "moduleName": "Advanced Prototyping Tricks",
          "moduleDuration": "11 Min 07 Sec",
          "completed": false,
        },
        {
          "moduleName": "Case Study: Redesigning an App",
          "moduleDuration": "40 Min 00 Sec",
          "completed": false,
        },
        {
          "moduleName": "Portfolio Tips for UI/UX",
          "moduleDuration": "13 Min 33 Sec",
          "completed": false,
        },
        {
          "moduleName": "Final Project Overview",
          "moduleDuration": "5 Min 40 Sec",
          "completed": false,
        },
      ],
      "playlistCount": 22,
    };
    return Scaffold(
      appBar: CustomAppBar(context: context, title: widget.courseName),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.23,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 0.5,
                  ),
                ],
              ),
              child: _controller.value.isInitialized
                  ? Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          ),
                        ),
                        Center(
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _controller.value.isPlaying
                                    ? _controller.pause()
                                    : _controller.play();
                              });
                            },
                            color: AppColors.primaryColor,
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            icon: Icon(
                              _controller.value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                            ),
                          ),
                        ),
                      ],
                    )
                  : const Center(child: Text("Please Wait")),
            ),
            SizedBox(height: 10),
            Text(
              courseDetails['courseName'],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  'Created by ',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text(
                  courseDetails['author'],
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star_border_rounded, color: Colors.black45),
                    SizedBox(width: 2),
                    Text(
                      "${courseDetails['ratings']}",
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(Icons.watch_later_outlined, color: Colors.black45),
                    SizedBox(width: 2),
                    Text(
                      "${courseDetails['durationTotalHours']} Hours",
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Text(
                  "\$${courseDetails['priceUSD']}",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(6),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TabBar(
                controller: _tabController,
                unselectedLabelColor: Colors.black87,
                labelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                dividerColor: Colors.transparent,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(text: "Playlist (${courseDetails['playlistCount']})"),
                  Tab(text: "Description"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: courseDetails['playlistCount'],
                    itemBuilder: (context, index) {
                      final data = courseDetails['modules'][index];
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: data['completed'] == true
                                ? AppColors.primaryColor
                                : AppColors.secondaryColor.withValues(
                                    alpha: 0.3,
                                  ),
                          ),
                          child: Icon(
                            Icons.play_arrow_rounded,
                            size: 30,
                            color: data['completed'] == true
                                ? Colors.white
                                : AppColors.primaryColor,
                          ),
                        ),
                        title: Text(
                          data['moduleName'],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          data['moduleDuration'],
                          style: TextStyle(color: Colors.black45),
                        ),
                        trailing: data['completed'] == true
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 30,
                              )
                            : Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orange.withValues(alpha: 0.3),
                                ),
                                child: Icon(
                                  Icons.lock,
                                  size: 20,
                                  color: Colors.orange,
                                ),
                              ),
                      );
                    },
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'This comprehensive Figma UI/UX Design course covers everything from the basics to advanced techniques. '
                        'You\'ll learn how to create stunning user interfaces, master auto layout, build design systems, '
                        'and create interactive prototypes. Perfect for beginners and intermediate designers looking to '
                        'level up their Figma skills.\n\n'
                        'What you\'ll learn:\n'
                        '• Fundamentals of UI/UX design\n'
                        '• Advanced Figma features and shortcuts\n'
                        '• Creating responsive designs with auto layout\n'
                        '• Building reusable components and variants\n'
                        '• Prototyping and user testing\n'
                        '• Design handoff best practices',
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.5,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
        child: Row(
          children: [
            CustomButton(
              icon: Icons.event_outlined,
              backgroundColor: Colors.orange,
            ),
            SizedBox(width: 12),
            Expanded(child: CustomButton(title: "Enroll Now")),
          ],
        ),
      ),
    );
  }
}
