import '../Import/import.dart';
class Section4 extends StatefulWidget {
  const Section4({super.key});

  @override
  State<Section4> createState() => _Section4State();
}

class _Section4State extends State<Section4> {
final GlobalKey section4Key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
                key: section4Key,
                padding: const EdgeInsets.all(15),
                alignment: Alignment.topLeft,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name: Fahad Rehan",
                        style: TextStyle(
                            fontFamily: 'Poppin',
                            fontSize: 20,
                            color: Colors.white)),
                    Text("Age:20",
                        style: TextStyle(
                            fontFamily: 'Poppin',
                            fontSize: 20,
                            color: Colors.white)),
                    Text("From: Islamabad Pakistan",
                        style: TextStyle(
                            fontFamily: 'Poppin',
                            fontSize: 20,
                            color: Colors.white))
                            ,divider()
                  ],
                ),
              );
  }
}