import 'package:flutter/material.dart';
import 'package:flutter_firebase/features/user_auth/presentation/technician/technicianHomePage.dart';
import 'package:flutter_firebase/features/user_auth/presentation/user/widgetList.dart';
import 'package:google_fonts/google_fonts.dart';

class SetupPage extends StatefulWidget {
  @override
  _SetupPageState createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  List<String> selectedOptions = [];
  List<String> customOptions = [
    'Toilet Bowl', 'Light bulb', 'Microwave/Oven', 'Ceiling Fan/Fan',
    'Air Vents', 'Water Heater', 'Air-Conditioner', 'Tub and Sink Drains',
    'Refrigerator', 'Television', 'Washing and Drying Machine',
    'Window and Door Screens', 
    // 'Garbage Disposal Repair', 'Kitchen Exhaust Fan Filter', 'Roofting',
    // 'Smoke Detector', 'Heat Vents',
  ];

  Map<String, bool> optionStatus = {}; // To track the status of each option

  void toggleOption(String option) {
    if (optionStatus.containsKey(option)) {
      optionStatus[option] = !optionStatus[option]!;
    } else {
      optionStatus[option] = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final optionsPerRow = 3; // Number of options per row

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 76, 175, 150), Color.fromARGB(255, 242, 245, 239)],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                columnSpace(ratio: 0.08),
                Text(
                  'Set Up',
                  style: GoogleFonts.poppins(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 20),
                Text(
                  'Please select based on your service.',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.black, fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Wrap(
                  spacing: 5.0, // Horizontal spacing between options
                  runSpacing: 5.0, // Vertical spacing between rows
                  children: customOptions.map((optionText) {
                    final isSelected = optionStatus[optionText] ?? false;

                    return ElevatedButton.icon(
                      onPressed: () {
                        toggleOption(optionText);
                      },
                      icon: isSelected ? const Icon(Icons.check) : const Icon(Icons.add),
                      label: Text(optionText),
                      style: ElevatedButton.styleFrom(
                        primary: isSelected ? const Color.fromARGB(255, 76, 168, 175) : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPrimary: isSelected ? Colors.white : Colors.black,
                      ),
                    );
                  }).toList(),
                ),

                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to TechniciansHomePage after clicking "Done" if there are selected options
                    if (optionStatus.containsValue(true)) {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const TechniciansHomePage()),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: optionStatus.containsValue(true) ? const Color.fromARGB(255, 12, 12, 12) : const Color.fromARGB(255, 142, 140, 140),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 140.0), // Adjust the width as needed
                    onPrimary: Colors.white,
                    onSurface: Colors.grey,
                    elevation: 5, // Add elevation for shadow
                    shadowColor: Colors.black, // Shadow color
                  ),
                  child: const Text('DONE', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                    ],
                  ),
                )
                
              ],
            ),
          ),
        ),
      
    );
  }
}
