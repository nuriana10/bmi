import 'package:flutter/material.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget({
    super.key,
    required this.text,
    required this.value,
    required this.onPressedRemove,
    required this.onPressedAdd,
  });

  final String text;
  final String value;
  final void Function()? onPressedRemove;
  final void Function()? onPressedAdd;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(16),
        color: const Color(0xff0B0120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffCECCD2)),
            ),
            Text(
              value,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w500,
                  height: 1),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: onPressedRemove,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5C5B5B),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(9)),
                  child: const Icon(
                    Icons.remove,
                    size: 36,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: onPressedAdd,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5C5B5B),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(9)),
                  child: const Icon(
                    Icons.add,
                    size: 36,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
