import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text("About Me", style: Theme.of(context).textTheme.titleLarge),
      ),
      body: Body(),
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
            const SizedBox(height: 10),
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/picture.jpg"),
              radius: 60,
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(
                  "Hey there, I'm Remi, a budding mobile developer who also loves anime, games and reading. I also dabble in poetry from time to time."
                  "\n \nFor the company, i would be able to translate deisgns provided into their relevent replicaitons on mobile platforms, and as I use Flutter, i would not be limited to either iOS or Android",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
              ),
            ),
            Container(
              child: Wrap(
                children: const [
                  ContactInfo(
                    url:
                        "mailto:aloaderemi1@gmail.com?subject=Sample Subject&body=This is a Sample email",
                    username: "aloaderemi1@gmail.com",
                    icon: Icon(Icons.mail),
                  ),
                  ContactInfo(
                      url: "https://github.com/aderemi-alo",
                      icon: Icon(FontAwesomeIcons.github),
                      username: "aderemi-alo"),
                  ContactInfo(
                      url: "https://twitter.com/alo_aderemi",
                      icon: Icon(FontAwesomeIcons.twitter),
                      username: "@alo_aderemi"),
                  ContactInfo(
                      url: "https://www.linkedin.com/in/aderemialo/",
                      icon: Icon(FontAwesomeIcons.linkedin),
                      username: "Aderemi Alo")
                ],
              ),
            ),
          ],
        ),
      ),
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
