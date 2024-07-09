import 'package:flutter/material.dart';

Future<void> dialogBuilder(
  BuildContext context, {
  required String title,
  required String result,
  required String description,
  required Color color,
}) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: const Color(0xff221935),
        title: const Center(
          child: Text(
            'RESULT',
            style: TextStyle(
              color: Color(0xffE2E9FF),
              fontSize: 20,
            ),
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
            Text(
              result,
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
              backgroundColor: const Color(0xffFF0F65),
            ),
            child: const Text(
              'TRY AGAIN',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
