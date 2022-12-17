import 'package:calorimeter/theme/theme.dart';
import '../../Calculate.dart';
import '../widget/ReusableCard.dart';
import 'result.dart';
import 'package:flutter/material.dart';

Color inactiveCard = bg;
var exerciseList = [
  "Tidak Pernah Olahraga",
  "Jarang Olahraga (1–3 days per week)",
  "Cukup aktif Olahraga (3–5 days per week)",
  "Sering Olahraga (6–7 days per week)",
  "Sangat Sering (twice per day)"
];
var goalList = [
  "Pertahankan berat badan",
  "Turun 0.5kg per Minggu",
  "Turun 1kg per Minggu",
  "Naik 0.5kg per Minggu",
  "Naik 1kg per Minggu"
];

class AimPage extends StatefulWidget {
  final int height, weight, age;
  final String gender;

  AimPage(
      {required this.height,
      required this.weight,
      required this.age,
      required this.gender});

  @override
  _AimPageState createState() => _AimPageState();
}

class _AimPageState extends State<AimPage> {
  String _activity = exerciseList[0];
  String _goal = goalList[0];
  int? height, weight, age;
  String? gender;

  @override
  void initState() {
    height = widget.height;
    weight = widget.weight;
    age = widget.age;
    gender = widget.gender;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calorie Meter"),
        centerTitle: true,
        backgroundColor: bg,
      ),
      body: SizedBox(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Skala Aktifitas",
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Roboto',
                        color: tx,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: cva.withOpacity(.3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                              value: exerciseList[0],
                              groupValue: _activity,
                              onChanged: ((value) {
                                setState(() {
                                  _activity = value!;
                                });
                              }),
                            ),
                            Text(
                              exerciseList[0],
                              style: TextStyle(fontSize: 15, color: tx),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: cva.withOpacity(.3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                              value: exerciseList[1],
                              groupValue: _activity,
                              onChanged: ((value) {
                                setState(() {
                                  _activity = value!;
                                });
                              }),
                            ),
                            Text(
                              exerciseList[1],
                              style: TextStyle(fontSize: 15, color: tx),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: cva.withOpacity(.3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                              value: exerciseList[2],
                              groupValue: _activity,
                              onChanged: ((value) {
                                setState(() {
                                  _activity = value!;
                                });
                              }),
                            ),
                            Text(
                              exerciseList[2],
                              style: TextStyle(fontSize: 15, color: tx),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: cva.withOpacity(.3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                              value: exerciseList[3],
                              groupValue: _activity,
                              onChanged: ((value) {
                                setState(() {
                                  _activity = value!;
                                });
                              }),
                            ),
                            Text(
                              exerciseList[3],
                              style: TextStyle(fontSize: 15, color: tx),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: cva.withOpacity(.3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                              value: exerciseList[4],
                              groupValue: _activity,
                              onChanged: ((value) {
                                setState(() {
                                  _activity = value!;
                                });
                              }),
                            ),
                            Text(
                              exerciseList[4],
                              style: TextStyle(fontSize: 15, color: tx),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Target Berat Badan",
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Roboto',
                        color: tx,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: cva.withOpacity(.3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Radio(
                              value: goalList[0],
                              groupValue: _goal,
                              onChanged: (value) {
                                setState(() {
                                  _goal = value!;
                                });
                              },
                            ),
                            Text(
                              goalList[0],
                              style: TextStyle(fontSize: 15, color: tx),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: cva.withOpacity(.3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Radio(
                              value: goalList[0],
                              groupValue: _goal,
                              onChanged: (value) {
                                setState(() {
                                  _goal = value!;
                                });
                              },
                            ),
                            Text(
                              goalList[0],
                              style: TextStyle(fontSize: 15, color: tx),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: cva.withOpacity(.3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Radio(
                              value: goalList[0],
                              groupValue: _goal,
                              onChanged: (value) {
                                setState(() {
                                  _goal = value!;
                                });
                              },
                            ),
                            Text(
                              goalList[0],
                              style: TextStyle(fontSize: 15, color: tx),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: cva.withOpacity(.3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Radio(
                              value: goalList[0],
                              groupValue: _goal,
                              onChanged: (value) {
                                setState(() {
                                  _goal = value!;
                                });
                              },
                            ),
                            Text(
                              goalList[0],
                              style: TextStyle(fontSize: 15, color: tx),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: cva.withOpacity(.3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Radio(
                              value: goalList[0],
                              groupValue: _goal,
                              onChanged: (value) {
                                setState(() {
                                  _goal = value!;
                                });
                              },
                            ),
                            Text(
                              goalList[0],
                              style: TextStyle(fontSize: 15, color: tx),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Calculate c = Calculate(
                    height: height!,
                    weight: weight!,
                    age: age!,
                    gender: gender!,
                    goal: _goal,
                    activity: _activity);
                c.calculateBMI();
                c.calculateBMR();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result(
                      status: c.getResult(),
                      msg: c.getInterpretation(),
                      statusNumber: c.calculateBMI(),
                      currentCalorie: c.getActivity(),
                      goalCalorie: c.getGoal(),
                      bmr: c.calculateBMR(),
                    ),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: cva,
                ),
                child: const Center(
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
