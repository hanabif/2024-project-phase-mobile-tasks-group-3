import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FacebookNotifications extends StatelessWidget {
  const FacebookNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> notifications = List.generate(
      7,
      (index) => {
        "name": "Darrell Trivedi",
        "message": "has a new story up.",
        "reaction": "What's your reaction?",
        "time": "2 hours ago",
        "avatar": "lib/images/Rectangle 70.png"
      },
    );

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sectionTitle("New"),
                  notificationList(notifications),
                  sectionTitle("Earlier"),
                  notificationList(notifications),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  
  

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget notificationList(List<Map<String, String>> notifications) {
    return Column(
      children: notifications.map((notification) => notificationItem(notification)).toList(),
    );
  }

  Widget notificationItem(Map<String, String> notification) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(notification["avatar"]!),
      ),
      title: RichText(
        text: TextSpan(
          style: const TextStyle(color: Colors.black, fontSize: 16),
          children: [
            TextSpan(
              text: "${notification["name"]} ",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: notification["message"]),
          ],
        ),
      ),
      subtitle: Text(notification["reaction"]!),
      trailing: const Icon(Icons.more_vert),
    );
  }
}
