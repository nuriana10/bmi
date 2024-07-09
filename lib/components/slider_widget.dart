import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
    required this.currentSliderValue,
    required this.onChanged,
  });

  final double currentSliderValue;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          color: const Color(0xff0B0120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'HEIGHT',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffCECCD2),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${currentSliderValue.toInt()}',
                    style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffCECCD2),
                      height: 1,
                    ),
                  ),
                  const Text(
                    'cm',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffCECCD2),
                      height: 1.8,
                    ),
                  ),
                ],
              ),
              Slider(
                value: currentSliderValue,
                max: 300,
                activeColor: Colors.white,
                inactiveColor: const Color(0xff888888),
                thumbColor: const Color(0xffFF0F65),
                label: currentSliderValue.round().toString(),
                onChanged: onChanged,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
