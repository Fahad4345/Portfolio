// ignore_for_file: avoid_unnecessary_containers




import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:myapp/utils/projectutils/projectutils.dart';
import 'package:myapp/widget/project_card.dart';

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

  final GlobalKey section1Key = GlobalKey();
  final GlobalKey section2Key = GlobalKey();
  final GlobalKey section3Key = GlobalKey();
final GlobalKey   section4Key = GlobalKey();
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
  
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: Builder(
                builder: (context) => IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ))),
        drawer:
          
            Drawer(
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
                    ListTile(  hoverColor: Colors.deepOrange,
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
                        onTap: () {Navigator.pop(context);
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
                      onTap: () {Navigator.pop(context);
                          Scrollable.ensureVisible(section4Key.currentContext!);
                        },
                    )
                  ],
                )),
       backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
  
              child: Column(
                children: [
              //1st Column
              
                  Container(
                    decoration: const BoxDecoration(
                    color: Colors.black,
                      image: DecorationImage(
                        alignment: Alignment.bottomRight,
                        fit:BoxFit.contain,image: AssetImage("assets/images/Face1.jpg"))
                    ),
                      key:section1Key,
                            padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("HEY There !",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 30, color: Colors.white)),
                        const Text( "Fahad Rehan",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white)),
                       
                        Row(
                        children: [const Icon(Icons.play_arrow ,color: Colors.deepOrange,size: 40,),
                        DefaultTextStyle(
                          style:const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          child: AnimatedTextKit(isRepeatingAnimation: true,repeatForever: true,
                            animatedTexts:
                           [
                            TypewriterAnimatedText('Flutter Developer'),
                            
                            TypewriterAnimatedText('Java Developer'),
                            
                            TypewriterAnimatedText('C++ Developer'),
                            
                            TypewriterAnimatedText('C# Developer'),
                          
                           ]
                                            ),
                        )
                                          ]),
                       const SizedBox(height: 430,) 
                        
                       
                      ],
                    ),
                  ),
              //  const Divider(
              //             color: Colors.deepOrange,
              //             thickness: 5,
              //             indent: 10,
              //             endIndent: 10,
              //           ),
              //2nd Column
              const SizedBox(height: 80,),
                  Container(
                    
                    key: section2Key,
                    child: const Column(children: [
                      Text("About Me",
                          style: TextStyle(
                              fontSize: 50,
                              
                              color: Colors.red)),
                      Text(
                        "Get To Know Me :)",
                        style: TextStyle(
                          fontSize: 20,
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
                                fontSize: 40,
                                
                                ),
                          ),
                          Text(
                            "Hello! I am Fahad Rehan, a dedicated Computer Science student currently navigating my fifth semester at FUUAST (Federal Urdu University of Arts, Science & Technology). With a passion for technology and innovation, I have been honing my skills in software development, with a particular focus on Flutter development. \n Education:\nCurrent Program: Bachelor of Computer Science, 5th Semester \n Institution: FUUAST \n  ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ]),
                  ),
              //3rd Column
                  Container(
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
                           Icon(Icons.play_arrow ,color: Colors.deepOrange,size: 20,),
                        
                        Text(
                          "  Flutter  C# , HTML , CSS , JS , Java ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ), ],
                       ),
                        
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.deepOrange,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                  ),
              //4rth Column
                  Container(
                    key: section4Key,
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.topLeft,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name: Fahad Rehan",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        Text("Age:20",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        Text("From: Islamabad Pakistan",
                            style: TextStyle(fontSize: 20, color: Colors.white))
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.deepOrange,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Container(child: const Column(children: [
                    Text("Portfolio",
                          style: TextStyle(
                              fontSize: 50,
                              
                              color: Colors.red))],),)
                      , const Text(
                        "Here are few sample of my previous work :)",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),

                      ),
                      const SizedBox(height: 20,),
                       CarouselSlider.builder(
          itemCount: Projectutils.description.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ProjectCard(
              icons: Projectutils.icons[i],
              description: Projectutils.description[i],
            ),
          ),
          options: CarouselOptions(
           autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),)
                     , const SizedBox(height: 200,)
                ],
              
              )
              ),
        ));
  }
}
