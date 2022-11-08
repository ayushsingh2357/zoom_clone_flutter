import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

import '../widgets/homemeeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChange(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meetings"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomemeetingButton(
                onPressed: () {},
                icon: Icons.videocam,
                text: "New Meeting",
              ),
              HomemeetingButton(
                onPressed: () {},
                icon: Icons.add_box_rounded,
                text: "Join",
              ),
              HomemeetingButton(
                onPressed: () {},
                icon: Icons.calendar_today,
                text: "Schedule",
              ),
              HomemeetingButton(
                onPressed: () {},
                icon: Icons.arrow_upward_rounded,
                text: "Share Screen",
              ),
            ],
          ),
          const Expanded(
            child: Center(
              child: Text(
                "Create/Join a Meeting",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        unselectedFontSize: 14,
        currentIndex: _page,
        onTap: onPageChange,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock), label: "Meetings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank), label: "Team Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Contact"),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined), label: "More"),
        ],
      ),
    );
  }
}
