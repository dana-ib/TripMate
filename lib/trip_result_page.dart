import 'package:flutter/material.dart';

// TRIP RESULTS PAGE

class TripResultsPage extends StatelessWidget {
  final String destination;
  final String duration;
  final String budget;
  final String travelStyle;

  const TripResultsPage({
    super.key,
    required this.destination,
    required this.duration,
    required this.budget,
    required this.travelStyle,
  });

  int get numberOfDays {
    switch (duration) {
      case '1 Day':
        return 1;
      case '2 Days':
        return 2;
      case '3 Days':
        return 3;
      case '1 Week':
        return 7;
      default:
        return 1;
    }
  }

  List<String> get activities {
    if (destination == 'Beach') {
      if (travelStyle == 'Adventure') {
        return [
          'Try water sports and swimming.',
          'Explore the beach and enjoy outdoor activities.',
          'Discover new coastal places.',
          'Enjoy a boat trip.',
          'Try exciting beach activities.',
          'Explore nearby beaches.',
          'Spend time swimming and relaxing.',
        ];
      } else if (travelStyle == 'Relaxation') {
        return [
          'Enjoy a peaceful day by the sea.',
          'Relax on the beach and enjoy the sunset.',
          'Spend time swimming and resting.',
          'Enjoy a quiet beach walk.',
          'Discover a relaxing seaside spot.',
          'Enjoy the sea view.',
          'Have a peaceful final beach day.',
        ];
      } else {
        return [
          'Explore the beach and nearby attractions.',
          'Enjoy swimming and beach activities.',
          'Discover local restaurants.',
          'Take photos by the sea.',
          'Visit nearby coastal places.',
          'Enjoy a beach walk.',
          'Explore more seaside attractions.',
        ];
      }
    }

    if (destination == 'Mountains') {
      if (travelStyle == 'Adventure') {
        return [
          'Start with a mountain hiking trail.',
          'Explore nature and walking paths.',
          'Discover a new mountain viewpoint.',
          'Enjoy an outdoor adventure.',
          'Try a challenging hiking route.',
          'Explore nearby mountain villages.',
          'Enjoy a final nature adventure.',
        ];
      } else if (travelStyle == 'Relaxation') {
        return [
          'Enjoy the peaceful mountain views.',
          'Relax in a quiet natural area.',
          'Take a slow walk in the mountains.',
          'Enjoy the fresh mountain air.',
          'Visit a peaceful mountain spot.',
          'Relax and enjoy the scenery.',
          'Spend your last day surrounded by nature.',
        ];
      } else {
        return [
          'Explore the mountain area.',
          'Visit beautiful viewpoints.',
          'Discover nearby villages.',
          'Take photos of the scenery.',
          'Enjoy a nature walk.',
          'Explore local attractions.',
          'Visit one last scenic location.',
        ];
      }
    }

    if (destination == 'City') {
      if (travelStyle == 'Adventure') {
        return [
          'Explore the city streets.',
          'Discover interesting local places.',
          'Try a new city activity.',
          'Visit popular attractions.',
          'Explore different neighborhoods.',
          'Discover hidden places in the city.',
          'Enjoy one last city adventure.',
        ];
      } else if (travelStyle == 'Relaxation') {
        return [
          'Enjoy a relaxing city walk.',
          'Visit a peaceful café.',
          'Spend time in a city park.',
          'Enjoy local restaurants.',
          'Discover a quiet shopping area.',
          'Relax and explore at your own pace.',
          'Enjoy a peaceful final day.',
        ];
      } else {
        return [
          'Visit the main city landmarks.',
          'Explore museums and attractions.',
          'Discover local shops and markets.',
          'Try traditional food.',
          'Visit famous places in the city.',
          'Explore another neighborhood.',
          'Take photos of your favorite places.',
        ];
      }
    }

    // Nature
    if (travelStyle == 'Adventure') {
      return [
        'Explore outdoor trails.',
        'Discover natural landscapes.',
        'Enjoy an outdoor adventure.',
        'Try a new nature activity.',
        'Explore nearby forests.',
        'Discover beautiful natural views.',
        'Enjoy a final outdoor adventure.',
      ];
    } else if (travelStyle == 'Relaxation') {
      return [
        'Enjoy a peaceful nature walk.',
        'Relax and enjoy the scenery.',
        'Spend time in a quiet natural area.',
        'Enjoy the fresh air.',
        'Discover a peaceful place.',
        'Take time to relax outdoors.',
        'Enjoy your final day in nature.',
      ];
    } else {
      return [
        'Explore natural attractions.',
        'Take photos of the scenery.',
        'Discover nearby natural areas.',
        'Enjoy a walking trail.',
        'Visit beautiful viewpoints.',
        'Explore more outdoor locations.',
        'Enjoy one last nature walk.',
      ];
    }
  }

  String get packingList {
    String items = '• Clothes\n'
        '• Comfortable shoes\n'
        '• Phone and charger\n'
        '• Personal items\n'
        '• Travel documents\n'
        '• Water bottle\n';

    if (destination == 'Beach') {
      items += '• Sunscreen\n• Swimwear\n• Sunglasses\n';
    } else if (destination == 'Mountains') {
      items += '• Warm jacket\n• Hiking shoes\n• Backpack\n';
    } else if (destination == 'Nature') {
      items += '• Insect repellent\n• Walking shoes\n• Hat\n';
    } else {
      items += '• Camera\n• Small day bag\n';
    }

    if (travelStyle == 'Adventure') {
      items += '• Adventure gear\n';
    } else if (travelStyle == 'Family') {
      items += '• Family essentials\n';
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    List<String> dailyActivities = activities;

    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF1B2F4B),
        foregroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.auto_awesome,color:Colors.white, size: 22),
            SizedBox(width: 8),
            Text(
          'TRIPMATE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
          ],
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // WELCOME HEADER

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),

              decoration: BoxDecoration(
                color: const Color(0xFF1B2F4B),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Icon(
                    Icons.auto_awesome,
                    color: Color(0xFF269E98),
                    size: 32,
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'Your Trip Is Ready!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Here is your personalized travel plan.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 18),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),

                    decoration: BoxDecoration(
                      color: const Color(0xFF269E98),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Text(
                      '$duration • $destination',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // TRIP DETAILS

            resultCard(
              'Your Trip Details',
              'Destination: $destination\n'
              'Duration: $duration\n'
              'Budget: $budget\n'
              'Travel Style: $travelStyle',
              Icons.flight,
            ),

            const SizedBox(height: 25),

            // DAILY ITINERARY

            const Text(
              'Daily Itinerary',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B2F4B),
              ),
            ),

            const SizedBox(height: 12),

            ...List.generate(numberOfDays, (index) {

              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.10),
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      width: 45,
                      height: 45,

                      decoration: BoxDecoration(
                        color: const Color(0xFFE2F3F1),
                        borderRadius: BorderRadius.circular(12),
                      ),

                      child: const Icon(
                        Icons.calendar_today,
                        color: Color(0xFF269E98),
                      ),
                    ),

                    const SizedBox(width: 14),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            'Day ${index + 1}',
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1B2F4B),
                            ),
                          ),

                          const SizedBox(height: 7),

                          Text(
                            dailyActivities[index],
                            style: const TextStyle(
                              fontSize: 14,
                              height: 1.5,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),

            const SizedBox(height: 15),

            // SUGGESTED ACTIVITIES

            resultCard(
              'Suggested Activities',

              budget == 'Low'
                  ? '• Explore free local attractions.\n'
                    '• Enjoy walking tours.\n'
                    '• Discover public parks and beaches.'
                  : budget == 'Medium'
                      ? '• Visit popular attractions.\n'
                        '• Try local restaurants.\n'
                        '• Enjoy guided tours.'
                      : '• Enjoy luxury experiences.\n'
                        '• Visit premium attractions.\n'
                        '• Try special dining experiences.',

              Icons.explore,
            ),

            const SizedBox(height: 20),

            // PACKING CHECKLIST

            resultCard(
              'Packing Checklist',
              packingList,
              Icons.backpack,
            ),

            const SizedBox(height: 20),

            // FOOTER

            Center(
              child: Column(
                children: const [

                  Icon(
                    Icons.flight_takeoff,
                    color: Color(0xFF269E98),
                    size: 30,
                  ),

                  SizedBox(height: 8),

                  Text(
                    'Happy Journey!',
                    style: TextStyle(
                      color: Color(0xFF1B2F4B),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    'Explore more. Enjoy every moment.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // REUSABLE RESULT CARD

  Widget resultCard(String title, String content, IconData icon) {

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),

        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.10),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [

              Container(
                width: 42,
                height: 42,

                decoration: BoxDecoration(
                  color: const Color(0xFFE2F3F1),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Icon(
                  icon,
                  color: const Color(0xFF269E98),
                  size: 23,
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1B2F4B),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Text(
            content,
            style: const TextStyle(
              fontSize: 14,
              height: 1.8,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}