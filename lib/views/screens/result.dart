import 'package:calorimeter/theme/theme.dart';
import 'package:flutter/material.dart';
import '../widget/ReusableCard.dart';
import 'input_page.dart';

class Result extends StatelessWidget {
  String status, msg;
  String statusNumber, currentCalorie, goalCalorie, bmr;
  Result(
      {required this.status,
      required this.msg,
      required this.statusNumber,
      required this.currentCalorie,
      required this.goalCalorie,
      required this.bmr});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
        centerTitle: true,
        backgroundColor: const Color(0xFF202020),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Column(
              children: [
                Image.asset(
                  "images/bmi.png",
                  scale: 2,
                  fit: BoxFit.fill,
                ),
                Text(
                  "$currentCalorie\n Kcal / hari",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: cva,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 5.5,
                    child: ReusableCard(
                      color: const Color(0xFF202020),
                      card: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "Body Mass",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffBB86FC),
                              ),
                            ),
                            Text(
                              status,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                // color: Colors.green,
                              ),
                            ),
                            Text(
                              statusNumber,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5.5,
                    width: MediaQuery.of(context).size.width / 2,
                    child: ReusableCard(
                      color: const Color(0xFF202020),
                      card: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "Basal Metabolic Rate",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffBB86FC),
                            ),
                          ),
                          Text(
                            bmr,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InputPage(
                              title: '',
                            )),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Container(
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text("Hitung Ulang"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
