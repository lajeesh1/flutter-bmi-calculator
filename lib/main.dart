import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: Bmi());
  }
}

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  Color maleColor = Colors.grey;
  Color femaleColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 150,
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.grey[600],
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              maleColor = Colors.white;
                              femaleColor = Colors.grey;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male, color: maleColor, size: 80),
                              Text(
                                "MALE",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        color: Colors.grey[600],
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              femaleColor = Colors.white;
                              maleColor = Colors.grey;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female, size: 80, color: femaleColor),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.grey[600],
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.grey[600],
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
