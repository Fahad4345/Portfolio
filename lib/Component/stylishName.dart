import 'package:flutter/material.dart';

class StylishName extends StatefulWidget {
  const StylishName({super.key});

  @override
  State<StylishName> createState() => _StylishNameState();
}

class _StylishNameState extends State<StylishName> {
  @override
  Widget build(BuildContext context) {
    return const Row(children: [Text("<",style:TextStyle(fontWeight: FontWeight.w700, color:Colors.white,fontSize: 40) ,),
            Text("Fahad", style: TextStyle(color:Colors.white,fontFamily: "agustina",fontSize: 30),),
            Text("/>",style:TextStyle(fontWeight: FontWeight.w700, color:Colors.white,fontSize: 40) ,)],);
  }
}