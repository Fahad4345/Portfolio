import 'Import/import.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});
  @override
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2381281401.
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  // ignore: unused_field
  final int _selectedIndex = 0;
  void scrollToSection(int index) {
    final sectionKeys = [
      section1Key,
      section2Key,
      section3Key,
      section4Key,
      section5Key,
      section7Key,
      
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

  final List<Icon> icon = [
    const Icon(FontAwesomeIcons.google),
    const Icon(FontAwesomeIcons.microsoft),
    const Icon(FontAwesomeIcons.amazon),
    const Icon(FontAwesomeIcons.airbnb),
  ];

  final GlobalKey section1Key = GlobalKey();
  final GlobalKey section2Key = GlobalKey();
  final GlobalKey section3Key = GlobalKey();
  final GlobalKey section4Key = GlobalKey();
  final GlobalKey section5Key = GlobalKey();
  final GlobalKey section6Key = GlobalKey();
  final GlobalKey section7Key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        appBar: AppBar(
            actions: const [StylishName()],
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Builder(
                builder: (context) => IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ))),
        drawer: const drawer(),
        body: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Section1(),
              divider(),
              Section2(),
              Section3(),
              Section4(),
              Section5(),
              Section6(),
              Section7(),
              Footer()
            ],
          ),
        ));
  }
}
