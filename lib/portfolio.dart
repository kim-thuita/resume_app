import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade500,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 40,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effectcan be applied to it.
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8), // Border width
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(60), // Image ra
                      child: Image(
                        image: AssetImage('images/kevin.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTextStyle(
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('KEVIN'),
                  TypewriterAnimatedText('KOECH'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DefaultTextStyle(
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('MOBILE'),
                  TypewriterAnimatedText('FLUTTER DEVELOPER'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse('https://medium.com/@kevinkoech265'),
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.medium,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse('https://twitter.com/kevinkoech265'),
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse('https://github.com/kim-thuita'),
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse(
                            'https://www.linkedin.com/in/kevin-koech-a2591923a/'),
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.linkedinIn,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 10, top: 20),
            height: 500,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: myessentials(
                          number: 19,
                          text: 'AGE',
                        ),
                      ),
                      Expanded(
                        child: myessentials(number: 8, text: "Mo's Exp"),
                      ),
                      Expanded(child: myessentials(number: 1, text: "Project")),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Specialities",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          my_cards(
                            icon: Icon(Icons.android),
                            text: 'Android Developer',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          my_cards(
                            icon: Icon(Icons.apple),
                            text: 'IOS Developer',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          my_cards(
                            icon: Icon(FontAwesomeIcons.git),
                            text: 'Git',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(height: 15),
                          my_cards(
                            text: 'HTML',
                            icon: Icon(FontAwesomeIcons.html5),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          my_cards(
                            text: 'PHP',
                            icon: Icon(Icons.php),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          my_cards(
                            text: 'PYTHON',
                            icon: Icon(FontAwesomeIcons.python),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class my_cards extends StatelessWidget {
  final String text;
  final Icon icon;

  const my_cards({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: 105,
      child: Expanded(
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.teal,
            child: Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon,
                    Text(
                      text,
                      style: TextStyle(
                        color: Colors.green.shade400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

class myessentials extends StatelessWidget {
  const myessentials({super.key, required this.number, required this.text});

  final int number;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          number.toString(),
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black,
            fontSize: 50,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
