import 'package:flutter/material.dart';

void main() {
  runApp(const MiCard());
}

class MiCard extends StatelessWidget {
  const MiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Nayan Mhaske",
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: "Playwrite",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(fontSize: 18, letterSpacing: 3),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                padding: EdgeInsets.all(
                  12,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "+91 9370518036",
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                padding: EdgeInsets.all(
                  12,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "nayanmhaske@gmail.com",
                    )
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
