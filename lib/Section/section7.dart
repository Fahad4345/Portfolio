import '../Import/import.dart';
class Section7 extends StatefulWidget {
  const Section7({super.key});

  @override
  State<Section7> createState() => _Section7State();
}

class _Section7State extends State<Section7> {
  final GlobalKey section7Key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:50),
      key: section7Key,
      child: const Column(
        children: [
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4232438706.
          Text("Get In Touch",
              style: TextStyle(
                  fontFamily: 'montserrat', fontSize: 50, color: Colors.white)),
          Text(
            "Let'sbuild something together :)",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ContactCard()
        ],
      ),
    );
    
  }
}
