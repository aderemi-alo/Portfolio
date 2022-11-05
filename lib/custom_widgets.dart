import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SkillsBar extends StatelessWidget {
  const SkillsBar({
    Key? key,
    required this.percent,
    required this.skill,
    required this.color,
  }) : super(key: key);

  final int percent;
  final String skill;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(skill),
            ],
          ),
        ),
        LinearPercentIndicator(
          progressColor: color,
          barRadius: const Radius.circular(12),
          lineHeight: 15,
          percent: percent / 100,
          animation: true,
          animationDuration: 2000,
        ),
      ],
    );
  }
}

class ExperienceStack extends StatelessWidget {
  const ExperienceStack({
    Key? key,
    required this.company,
    required this.duration,
    required this.role,
  }) : super(key: key);

  final String company;
  final String duration;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(company),
            const SizedBox(width: 10),
            Text(duration),
          ],
        ),
        Text(role),
      ],
    );
  }
}
