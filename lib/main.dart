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
  Color? blueColor = Colors.deepOrange[900];
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 150,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[900],
                ),
                child: Row(
                  children: [
                    // Male-Female section ###################################
                    Expanded(
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              maleColor = blueColor!;
                              femaleColor = const Color.fromARGB(
                                150,
                                158,
                                158,
                                158,
                              );
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
                                  fontSize: 14,
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[900],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              femaleColor = blueColor!;
                              maleColor = const Color.fromARGB(
                                150,
                                158,
                                158,
                                158,
                              );
                              ;
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
                                  fontSize: 14,
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
              // Height section ###################################
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 150,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[900],
                  ),
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
                          activeColor: blueColor!,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Weight and age section ###################################
              Expanded(
                child: Container(
                  height: 150,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(1, 33, 33, 33),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),

                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Weight",

                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 55,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(5),
                                      backgroundColor: Colors.grey[800],
                                    ),
                                    child: Text(
                                      "-",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(5),
                                      backgroundColor: Colors.grey[800],
                                    ),
                                    child: Text(
                                      "+",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      // AGE secton ################################################
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 5),

                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Age",

                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 55,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(5),
                                      backgroundColor: Colors.grey[800],
                                    ),
                                    child: Text(
                                      "-",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(5),
                                      backgroundColor: Colors.grey[800],
                                    ),
                                    child: Text(
                                      "+",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Bottom button section ###################################
              Container(
                height: 70,
                margin: EdgeInsets.only(bottom: 10),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: blueColor!,
                ),
                child: Center(
                  child: Text("Get BMI", style: TextStyle(fontSize: 25)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
