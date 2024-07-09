import 'dart:math';
import 'package:bmi_flutter/components/slider_widget.dart';
import 'package:bmi_flutter/components/status_card.dart';
import 'package:bmi_flutter/components/weight_age_widget.dart';
import 'package:bmi_flutter/utils/alert_dialog.dart';
import 'package:flutter/material.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({
    super.key,
  });

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  bool isSelect = false;
  double currentSliderValue = 180;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff221935),
      appBar: AppBar(
          backgroundColor: const Color(0xff221935),
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                StatusCard(
                    icon: Icons.male,
                    text: 'MALE',
                    isSelect: isSelect,
                    onTap: () {
                      setState(() {
                        isSelect = false;
                      });
                    }),
                StatusCard(
                    icon: Icons.female,
                    text: 'FEMALE',
                    isSelect: !isSelect,
                    onTap: () {
                      setState(() {
                        isSelect = true;
                      });
                    }),
              ],
            ),
          ),
          SliderWidget(
            currentSliderValue: currentSliderValue,
            onChanged: (double value) {
              setState(() {
                currentSliderValue = value;
              });
            },
          ),
          Expanded(
            child: Row(
              children: [
                WeightAgeWidget(
                  onPressedRemove: () {
                    setState(() {
                      weight--;
                    });
                  },
                  onPressedAdd: () {
                    setState(() {
                      weight++;
                    });
                  },
                  text: 'WEIGHT',
                  value: '$weight',
                ),
                WeightAgeWidget(
                  onPressedRemove: () {
                    setState(() {
                      age--;
                    });
                  },
                  onPressedAdd: () {
                    setState(() {
                      age++;
                    });
                  },
                  text: 'AGE',
                  value: '$age',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          final result = weight / pow(currentSliderValue / 100, 2);
          if (result < 18.5) {
            dialogBuilder(
              context,
              title: 'Underweight',
              result: '${result.toInt()}',
              description: 'You are underweight, try to gain muscle mass!',
              color: Colors.blue,
            );
          } else if (result >= 18.5 && result < 24.9) {
            dialogBuilder(
              context,
              title: 'Normal 👍',
              result: '${result.toInt()}',
              description:
                  'You are a normal weight, you are GREAT! Be on balance!',
              color: Colors.green,
            );
          } else {
            dialogBuilder(
              context,
              title: 'Overweight',
              result: '${result.toInt()}',
              description:
                  'You are overweight, you need to eat healthy and exercise.',
              color: const Color(0xffFF0F65),
            );
          }
        },
        child: Container(
          width: double.infinity,
          height: 70,
          color: const Color(0xffFF0F65),
          child: const Center(
            child: Text(
              'CALCULATOR',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
