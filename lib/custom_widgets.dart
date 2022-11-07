import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            Text(
              company,
              style: GoogleFonts.kanit(fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 10),
            Text(duration),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          role,
          style: GoogleFonts.kanit(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    Key? key,
    required this.url,
    required this.icon,
    required this.username,
  }) : super(key: key);

  final String url;
  final Icon icon;
  final String username;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            launchUrl(Uri.parse(url));
          },
          icon: icon,
        ),
        Text(username)
      ],
    );
  }
}

class ProjectButton extends StatelessWidget {
  const ProjectButton({
    Key? key,
    required this.projectName,
    required this.githubLink,
    required this.description,
  }) : super(key: key);

  final String projectName;
  final String githubLink;
  final String description;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              constraints: const BoxConstraints(maxHeight: 200),
              context: context,
              builder: (context) {
                return Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    ListTile(
                      leading: Text(projectName),
                      trailing: IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse(githubLink));
                          },
                          icon: const Icon(
                            FontAwesomeIcons.github,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(description),
                    )
                  ],
                );
              });
        },
        child: Text(projectName));
  }
}
