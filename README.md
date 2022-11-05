# portfolio

This is a resume app that was built with Flutter and will be continuously adopted.
The application contains information about me, what i can do for a company, my picture, a comparism of my skills, my experiences and projects, and ways to contact me

My Code base has the following breakdown:
- The Source code has two screens which can be found in the pages directory,
- The screens are the About me page, and the Portfolio page,
- Widgets such as the Experience Stack and Progress Skill bar repeat themselves throughout the codebase so they were extracted and placed into the custom_widgets.dart file,
- A bottom naigation bar was positioned on the AboutMe page for easy navigation.
- All the content has been allocated into cards which use the same theme.

The basic design was sourced from here("https://dribbble.com/shots/15273424-Resume-CV-Mobile-Shots")
 
Libraries used in the project:
- Google fonts was used to get specific text styling,
- Google nav bar was used for the bottom navigation bar,
- Percent indicator was used for the skill bars on the portfolio screen,
- Url launcher was used to link the icons on the AboutMe page for contacting purposes and for my projects to their github repositories
- Font awesome was used to get specific social media icons as flutter's default icon class didn't have them.

Features I would love to add in the future:
- Automatic Dark mode enabling
- Language enabling
- A modal sheet where people can view pictures or views of my projects in the application

Link to the Apk()

Challenges I faced during the creation of this project:
- I didn't know how to work with the percent indicator and url launcher packages as this was my first implementation with them. I overcame my difficulties by reading the documentaion.
- I had issues styling my Cards individually and decided to learn about creating a Card Theme to make it easier.

Link to Appetize()