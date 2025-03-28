import 'package:flutter/material.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Status Bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '4:35 PM',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF555555),
                  ),
                ),
                Row(
                  children: [
                    Transform.rotate(
                      angle: 0.785398, // 45 degrees in radians
                      child: const Text(
                        '▲',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF555555),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '▼',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF555555),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '■',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF555555),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '80%',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF555555),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Search Bar
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF7970b1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6EEEE),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Search file',
                      style: TextStyle(
                        color: Color(0xFF999999),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Photos Header
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Photos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFFC4C4C4),
                ),
              ),
            ),
          ),

          // Month Header
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'November',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF827C7C),
                ),
              ),
            ),
          ),

          // Photo Grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: List.generate(16, (index) {
                  List<String> imagePaths = [
                    'lib/images/card (6).png',
                    'lib/images/card (7).png',
                    'lib/images/card (8).png',
                    'lib/images/card (9).png',
                    'lib/images/card (10).png',
                    'lib/images/card (12).png',
                    'lib/images/card (14).png',
                    'lib/images/card (15).png',
                    'lib/images/card (6).png',
                    'lib/images/card (7).png',
                    'lib/images/card (8).png',
                    'lib/images/card (9).png',
                    'lib/images/card (10).png',
                    'lib/images/card (12).png',
                    'lib/images/card (14).png',
                    'lib/images/card (15).png',

                  ];

                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),

          // Bottom Navigation
          Container(
            color: const Color(0xFF7970b1),
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.photo_library, color: Colors.white),
                Icon(Icons.camera_alt, color: Colors.white),
                Icon(Icons.videocam, color: Colors.white),
                Icon(Icons.more_vert, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
