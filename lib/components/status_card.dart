import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
    required this.icon,
    required this.text,
    required this.isSelect,
    required this.onTap,
  });
  final IconData icon;
  final String text;
  final bool? isSelect;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Card(
          margin: const EdgeInsets.all(16),
          color: const Color(0xff0B0120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 80,
                color: Colors.white,
              ),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffCECCD2)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
