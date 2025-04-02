import 'package:flutter/material.dart';

class UpgradeSection extends StatelessWidget {
  const UpgradeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF212130),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Upgrade your plan,',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Text(
                'Pro plan',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Spacer(),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.arrow_forward, color: Colors.white, size: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}