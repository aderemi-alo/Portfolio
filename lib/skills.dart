import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'custom_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          "Portfolio",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: const Body(),
      // bottomNavigationBar: CustomButtonNavBar();
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("Skills"),
                    SizedBox(
                      height: 10,
                    ),
                    SkillsBar(
                        percent: 40, skill: "Flutter", color: Colors.blue),
                    SizedBox(
                      height: 10,
                    ),
                    SkillsBar(percent: 60, skill: "Git", color: Colors.black),
                    SizedBox(
                      height: 10,
                    ),
                    SkillsBar(
                        percent: 30, skill: "Python", color: Colors.yellow),
                    SizedBox(
                      height: 10,
                    ),
                    SkillsBar(
                        percent: 100, skill: "Tenacity", color: Colors.blue),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("Experience"),
                    SizedBox(
                      height: 10,
                    ),
                    ExperienceStack(
                      company: "ZOJATECH",
                      duration: "October 2022 - Present",
                      role: "Graduate Trainee (Flutter Developer)",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExperienceStack(
                      company: "HNG Internship",
                      duration: "October 2022 - Present",
                      role: "Intern (Mobile Stack - Stage 2)",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExperienceStack(
                      company: "MAINONE",
                      duration: "May 2021 - October 2022",
                      role: "IT Support Intern",
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    const Text("Projects"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        ProjectButton(
                          projectName: "PATHOMED",
                          githubLink: "https://github.com/aderemi-alo/PathoMed",
                          description:
                              "Pathomed is a mobile application which helps Pathologists conduct a diagnosis for patients who could possibly have breast cancer. It was created as my final year project and can be found on github by clicking the icon above",
                        ),
                        ProjectButton(
                          projectName: "PORTFOLIO",
                          githubLink:
                              "https://github.com/aderemi-alo/Portfolio",
                          description:
                              "Portfolio is a mobile version of my resume showcasing my skills, experience, information about me and past projects i have done",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
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
