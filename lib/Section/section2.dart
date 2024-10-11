
import '../Import/import.dart';

class Section2 extends StatefulWidget {
  const Section2({super.key});

  @override
  State<Section2> createState() => _Section2State();
}

class _Section2State extends State<Section2> {
   final GlobalKey section2Key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 80),
      key: section2Key,
      child: const Column(children: [
        Text("About Me",
            style: TextStyle(
                fontSize: 50, fontFamily: 'montserrat', color: Colors.white)),
        Text(
          "Get To Know Me :)",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'montserrat',
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        CircleAvatar(
          foregroundColor: Colors.deepOrange,
          backgroundImage: AssetImage("assets/images/CircleAvatar.jpeg"),
          radius: 100,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Who I am?",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 72, 0),
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "I'm Fahad Rehan, a Flutter developer and UI designer.",
              style: TextStyle(
                  fontFamily: 'montserrat',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "I'm a 6th semester Computer Science student enrolled in FUUAST (Federal Urdu University of Arts, Science & Technology). With a passion for technology and innovation, I have been honing my skills in software development, with a particular focus on Flutter development. \n Education:\nCurrent Program: Bachelor of Computer Science, 5th Semester \n Institution: FUUAST \n  ",
              style: TextStyle(
                fontFamily: 'montserrat',
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
        divider()
      ]),
    );
  }
}
