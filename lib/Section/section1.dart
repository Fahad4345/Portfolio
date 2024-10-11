
import '../Import/import.dart';

class Section1 extends StatefulWidget {
  const Section1({super.key});

  @override
  State<Section1> createState() => _Section1State();
}

class _Section1State extends State<Section1> {
  final GlobalKey section1Key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin: const EdgeInsets.only(top: 80),
      decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.bottomRight,
              fit: BoxFit.contain,
              image: AssetImage("assets/image/Face1.jpg"))),
      key: section1Key,
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("HEY There !",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 30, color: Colors.white)),
          const Text("Fahad Rehan",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Row(children: [
            const Icon(
              Icons.play_arrow,
              color: Colors.deepOrange,
              size: 40,
            ),
            DefaultTextStyle(
                style: const TextStyle(
                  fontFamily: 'montserrat',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                    isRepeatingAnimation: true,
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText('Flutter Developer'),
                      TypewriterAnimatedText('Java Developer'),
                      TypewriterAnimatedText('C++ Developer'),
                      TypewriterAnimatedText('C# Developer'),
                    ]))
          ]),
          const SizedBox(height: 430),
          
        ],
      ),
    );
  }
}
