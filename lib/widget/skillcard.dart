
import '../Import/import.dart';

class SkillCard extends StatefulWidget {

  const SkillCard({
  super.key, 
 });

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  @override
  Widget build(BuildContext context) {
     return  
      CarouselSlider.builder(
          itemCount: Projectutils.skilltitle.length,
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
       [SizedBox(height: 50,width: 50,
         child: Image.asset(Projectutils.skillicon[i],
              ),
       )
     ,
      Text(
      Projectutils.skilltitle[i],style: const TextStyle(
         fontFamily:'Poppin'
      ,fontWeight: FontWeight.bold,
      color: Colors.white),
     )
      ],),)
          ));
    
    //
    // 
  }
}
