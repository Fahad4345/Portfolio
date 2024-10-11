import '../Import/import.dart';
class Section5 extends StatefulWidget {
  const Section5({super.key});

  @override
  State<Section5> createState() => _Section5State();
}

class _Section5State extends State<Section5> {
     final GlobalKey section5Key = GlobalKey();
   @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
               key: section5Key,
                child: const Column(
                  children: [
                    Text("What I Do",
                        style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'montserrat',
                            color: Colors.white)),
                    Text(
                      "I may not be perfect, but I'm surely of some help :)",
                      style: TextStyle(
                        fontFamily: 'Poppin',
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SkillCard()
                  ],
                ),
              );
  }
}