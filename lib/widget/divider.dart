
import '../Import/import.dart';

class divider extends StatefulWidget {
  const divider({super.key});

  @override
  State<divider> createState() => _dividerState();
}

class _dividerState extends State<divider> {
  @override
  Widget build(BuildContext context) {
    return const Divider(
                color: Color(0xff212121),
                thickness: 5,
                indent: 10,
                endIndent: 10,
              );
  }
}