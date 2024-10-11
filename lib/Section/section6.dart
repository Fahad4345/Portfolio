import '../Import/import.dart';
class Section6 extends StatefulWidget {
  const Section6({super.key});

  @override
  State<Section6> createState() => _Section6State();
}

class _Section6State extends State<Section6> {
  final GlobalKey section6Key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      key: section6Key,
      child: const Column(
        children: [
          Text("Portfolio",
              style: TextStyle(
                  fontFamily: 'montserrat', fontSize: 50, color: Colors.white)),
          Text(
            "Here are few sample of my previous work :)",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ProjectCard()
        ],
      ),
    );
  }
}
