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
  int height = 180;

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
                color: Colors.grey[900],
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
                                  color: maleColor,
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
                        color: Colors.grey[900],
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
                                  color: femaleColor,
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
                  padding: EdgeInsets.all(15),
                  height: 150,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.grey[900],
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 55,
                              ),
                            ),
                            Baseline(
                              baseline: 50,
                              baselineType: TextBaseline.alphabetic,
                              child: Text("CM"),
                            ),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                          min: 120,
                          max: 215,
                          activeColor: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.grey[900],
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.only(bottom: 10),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
