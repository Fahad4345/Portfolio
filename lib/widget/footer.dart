
import '../Import/import.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:50),
      height: 50,
     color: const Color(0xff212121),
     child:const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text("Developed in ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white ,fontFamily: 'montserrat')),
        Text("❤️",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white ,fontFamily: 'montserrat')),
         
         Text(" with ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white ,fontFamily: 'montserrat'),),
         Text("Flutter",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Color(0xff3366FF) ,fontFamily: 'montserrat'),)

      ],
    ),);
  }
}