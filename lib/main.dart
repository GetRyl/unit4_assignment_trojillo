import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cyril Reynold S. Trojillo',
            style: TextStyle(
              fontWeight: FontWeight.bold, // Set the text to bold
              fontSize: 26, 
            ),
          ),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture and Name
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/Parangal_Trojillo.png'), // Profile image
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Cyril Reynold S. Trojillo',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Information Section
              Container(
                padding: EdgeInsets.all(8.0),  // Optional: Add some padding inside the border
                decoration: BoxDecoration(
                  border: Border.all(
                  color: Colors.grey,  // Border color
                  width: 2.0,         // Border width
                  ),
                borderRadius: BorderRadius.circular(10.0), // Optional: Rounded corners
                ),

                child: Table(
                  columnWidths: const {
                    0: FixedColumnWidth(40), // Icon column width
                    1: FlexColumnWidth(),     // Text column width
                    2: FlexColumnWidth(),     // Data column width
                  },
                  children: [
                    TableRow(children: [
                      Icon(Icons.email),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('cyrilreynold.trojillo@wvsu.edu.ph'),
                      ),
                    ]),
                    TableRow(children: [
                      Icon(Icons.phone),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Phone Number', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('+639566706268'),
                      ),
                    ]),
                    TableRow(children: [
                      Icon(Icons.home),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Address',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('133 Maravilla Street, Santa Barbara, Iloilo'),
                      ),
                    ]),
                    TableRow(children: [
                      Icon(Icons.school),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Course',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Bachelor of Science in Computer Science'),
                      ),
                    ]),
                    TableRow(children: [
                      Icon(Icons.favorite), // If you don't have the hobby icon, you can use Icons.star or Icons.favorite instead
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Hobbies',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Sleeping, Gaming, Eating, Walking, Music, Studying'),
                      ),
                    ]),
                  ],
                )  
              ),
              SizedBox(height: 20),

              // Biography Section
              Container(
                padding: EdgeInsets.all(8.0),  // Optional: Add some padding inside the border
                margin: EdgeInsets.only(top: 20),  // Optional: Add some margin on top
                decoration: BoxDecoration(
                  border: Border.all(
                  color: Colors.grey,  // Border color
                  width: 2.0,         // Border width
                  ),
                borderRadius: BorderRadius.circular(10.0), // Optional: Rounded corners
                ),

              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Biography',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'I grew up from Santa Barbara, Iloilo and lived there most of my life. Stepping into college, especially the computer science course in the College of ICT on West Visayas State University was a very big leap. It has been 3 years and i still get overwhelmed, but all of these experiences built the person who I am today.'
                      'I mostly enjoy a nice cup of coffee, quality time with friends and loved ones, playing games with my friends, and a good horror movie. Even the small moments can really make my day and I really try to also be the reason of those small happy moments.'
                      'It may get overwhelming most of the time, I am just glad to have my friends always reminding me to breath and to take everything easy.',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
