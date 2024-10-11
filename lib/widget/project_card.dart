
import '../Import/import.dart';

class ProjectCard extends StatefulWidget {

  const ProjectCard({
  super.key, 
 });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
     return  
      CarouselSlider.builder(
          itemCount: Projectutils.description.length,
           options: CarouselOptions(
           autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
           
            child: Container(
              width:300,
      height:800,
      color: const Color(0xff212121),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
       [
        Projectutils.icon[i],
     
      Text(
      Projectutils.description[i],style: const TextStyle(color: Colors.white),
     )
      ],),)
          ));
    
    //
    // 
  }
}
