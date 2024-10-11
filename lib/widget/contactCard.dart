
import '../Import/import.dart';
class ContactCard extends StatefulWidget {
  const ContactCard({super.key});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return  CarouselSlider.builder(
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
        children:[
       
         Projectutils.contacticon[i],
              

     
      Text(
      Projectutils.ContactTitle[i],style: const TextStyle(
         fontFamily:'Poppin'
      ,fontWeight: FontWeight.bold,
      color: Colors.white),
     )
      ],),)
          ));
    
  }
}