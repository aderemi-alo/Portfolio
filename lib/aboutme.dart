import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          "About Me",
          style: GoogleFonts.roboto(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Body(),
      // bottomNavigationBar: CustomButtonNavBar(),
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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/picture.jpg"),
                radius: 60,
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 200,
                  height: 100,
                  child: Text(
                    "Hi, I'm Remi",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam laoreet neque eu pulvinar venenatis. Cras eleifend erat eu vulputate interdum. Ut sagittis ac arcu id commodo. Nam sed convallis neque. Duis vitae posuere mi. Cras velit dolor, aliquam vitae convallis id, tincidunt in turpis. Maecenas fermentum lacus quis dui faucibus ultrices.",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
