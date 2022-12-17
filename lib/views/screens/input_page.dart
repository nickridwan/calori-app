import 'dart:developer';

import 'package:calorimeter/theme/theme.dart';
import 'package:calorimeter/views/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/ImageTextCard.dart';
import '../widget/ReusableCard.dart';
import 'choose.dart';

// const Color inactiveCard = Color(0xFF303030);
// const Color activeCard = Color(0xFF424242);
Color inactiveCard = bg;
Color activeCard = cva;

class InputPage extends StatefulWidget {
  String title;
  InputPage({required this.title});

  @override
  _InputPageState createState() => _InputPageState();
}

// ignore: camel_case_types
class _InputPageState extends State<InputPage> {
  Color maleCard = inactiveCard, femaleCard = inactiveCard;
  int height = 180, weight = 60, age = 25;
  String gender = "";
  void updateGenderSelected(int x) {
    if (x == 1) {
      gender = "Male";
      maleCard = activeCard;
      femaleCard = inactiveCard;
    } else {
      gender = "Female";
      maleCard = inactiveCard;
      femaleCard = activeCard;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calorie Meter"),
        centerTitle: true,
        backgroundColor: bg,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        log("FEMALE");
                        updateGenderSelected(2);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCard,
                      card: ImageTextCard(
                        text: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        log("MALE");
                        updateGenderSelected(1);
                      });
                    },
                    child: ReusableCard(
                      color: maleCard,
                      card: ImageTextCard(
                        text: "MALE",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: bg,
              card: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 18,
                      color: tx,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: cva,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 18,
                          color: tx,
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 20),
                      // activeTrackColor: Color(0xffC38FFF),
                      // thumbColor: Color(0xffC38FFF),
                      // inactiveTrackColor: Color(0x55C38FFF),
                      activeTrackColor: Color(0xff03DAC5),
                      thumbColor: Color(0xff03DAC5),
                      inactiveTrackColor: Color(0x5503DAC5),
                      overlayColor: Color(0x5503DAC5),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 240.0,
                      onChanged: (double x) {
                        setState(() {
                          height = x.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: bg,
                    card: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 18,
                            color: tx,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            color: cva,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: const Icon(
                                Icons.remove,
                                size: 24.0,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: bg,
                    card: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Age",
                          style: TextStyle(
                            fontSize: 18,
                            color: tx,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            color: cva,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
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
          InkWell(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AimPage(
                      height: height,
                      weight: weight,
                      gender: gender,
                      age: age,
                    ),
                  ),
                );
              });
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: cva,
              ),
              child: const Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
