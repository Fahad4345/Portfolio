
import '../Import/import.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  final GlobalKey section1Key = GlobalKey();
  final GlobalKey section2Key = GlobalKey();
  final GlobalKey section3Key = GlobalKey();
  final GlobalKey section4Key = GlobalKey();
  final GlobalKey section5Key = GlobalKey();
  final GlobalKey section6Key = GlobalKey();
   final GlobalKey section7Key = GlobalKey();
  void scrollToSection(int index) {
    final sectionKeys = [
      section1Key,
      section2Key,
      section3Key,
    ];
    final targetKey = sectionKeys[index];

    // ignore: unnecessary_null_comparison
    if (targetKey != null) {
      Scrollable.ensureVisible(
        targetKey.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
  
  
  @override

 Widget build(BuildContext context) {
    return Drawer(
            backgroundColor: Colors.grey[900],
            shadowColor: Colors.yellow,
            child: ListView(
              children: [
                const DrawerHeader(
                    child: SizedBox(
                  height: 20,
                )),
                ListTile(
                    hoverColor: Colors.deepOrange,
                    title: const Text(
                      "Personal",
                      style: TextStyle(color: Colors.white70),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Scrollable.ensureVisible(section1Key.currentContext!);
                    }),
                ListTile(
                    hoverColor: Colors.deepOrange,
                    title: const Text(
                      " About me",
                      style: TextStyle(color: Colors.white70),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Scrollable.ensureVisible(section2Key.currentContext!);
                    }),
                ListTile(
                    hoverColor: Colors.deepOrange,
                    title: const Text(
                      "Skills",
                      style: TextStyle(color: Colors.white70),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Scrollable.ensureVisible(section3Key.currentContext!);
                    }),
                ListTile(
                  hoverColor: Colors.deepOrange,
                  title: const Text(
                    "Projects",
                    style: TextStyle(color: Colors.white70),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Scrollable.ensureVisible(section4Key.currentContext!);
                  },
                ),
                ListTile(
                  hoverColor: Colors.deepOrange,
                  title: const Text(
                    "Contact Me",
                    style: TextStyle(color: Colors.white70),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Scrollable.ensureVisible(section4Key.currentContext!);
                  },
                )
              ],
            )); 
  }
}