import '../Import/import.dart';
class Section3 extends StatefulWidget {
  const Section3({super.key});

  @override
  State<Section3> createState() => _Section3State();
}

class _Section3State extends State<Section3> {
   final GlobalKey section3Key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
                key: section3Key,
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                alignment: Alignment.topLeft,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Technologies I have worked with:",
                        style: TextStyle(fontSize: 20, color: Colors.red)),
                    Row(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.deepOrange,
                          size: 20,
                        ),
                        Text(
                          "  Flutter , C# , HTML , CSS , JS , Java ",
                          style: TextStyle(
                              fontFamily: 'Poppin',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    divider()
                  ],
                ),
              );
  }
}