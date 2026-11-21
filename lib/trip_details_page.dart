import 'package:flutter/material.dart';
import 'trip_result_page.dart';
// TRIP DETAILS PAGE

class TripDetailsPage extends StatefulWidget {
  const TripDetailsPage({super.key});

  @override
  State<TripDetailsPage> createState() => _TripDetailsPageState();
}

class _TripDetailsPageState extends State<TripDetailsPage> {

  String? destination;
  String? duration;
  String? budget;
  String? travelStyle;

  // Reusable dropdown card
  Widget buildOptionCard({
    required String title,
    required String hint,
    required String? value,
    required List<String> options,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1B2F4B),
              letterSpacing: 0.8,
            ),
          ),

          const SizedBox(height: 12),

          DropdownButtonFormField<String>(
            value: value,
            isExpanded: true,

            decoration: InputDecoration(
              hintText: hint,
              filled: true,
              fillColor: const Color(0xFFF2F4F7),

              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 14,
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),

            items: options.map((option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Text(option),
              );
            }).toList(),

            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F4F7),

      appBar: AppBar(
        backgroundColor: const Color(0xFF1B2F4B),
        foregroundColor: Colors.white,
        title: const Row(
          children: [
            Icon(Icons.auto_awesome, size: 22),
            SizedBox(width: 10),
            Text(
              'TRIPMATE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(height: 10),

            const Text(
              'Plan your next adventure',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B2F4B),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Tell us what you like. We’ll help organize your trip.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            // DESTINATION TYPE
            buildOptionCard(
              title: 'DESTINATION TYPE',
              hint: 'Choose a destination',
              value: destination,
              options: [
                'Beach',
                'Mountains',
                'City',
                'Nature',
              ],
              onChanged: (value) {
                setState(() {
                  destination = value;
                });
              },
            ),

            const SizedBox(height: 18),

            // TRIP DURATION
            buildOptionCard(
              title: 'TRIP DURATION',
              hint: 'Select days',
              value: duration,
              options: [
                '1 Day',
                '2 Days',
                '3 Days',
                '1 Week',
              ],
              onChanged: (value) {
                setState(() {
                  duration = value;
                });
              },
            ),

            const SizedBox(height: 18),

            // BUDGET
            buildOptionCard(
              title: 'BUDGET',
              hint: 'Choose budget',
              value: budget,
              options: [
                'Low',
                'Medium',
                'High',
              ],
              onChanged: (value) {
                setState(() {
                  budget = value;
                });
              },
            ),

            const SizedBox(height: 18),

            // TRAVEL STYLE
            buildOptionCard(
              title: 'TRAVEL STYLE',
              hint: 'Choose travel style',
              value: travelStyle,
              options: [
                'Adventure',
                'Relaxation',
                'Sightseeing',
                'Family',
              ],
              onChanged: (value) {
                setState(() {
                  travelStyle = value;
                });
              },
            ),

            const SizedBox(height: 30),

            // PLAN MY TRIP BUTTON
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {

                  if (destination == null ||
                      duration == null ||
                      budget == null ||
                      travelStyle == null) {

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please select all options.'),
                      ),
                    );

                    return;
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TripResultsPage(
                        destination: destination!,
                        duration: duration!,
                        budget: budget!,
                        travelStyle: travelStyle!,
                      ),
                    ),
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF269E98),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                child: const Text(
                  'PLAN MY TRIP',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}