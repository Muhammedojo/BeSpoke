
import '../../../core/utils/packages.dart';
import '../view/home.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeController createState() => HomeController();
}

class HomeController extends State<Home> {
  //... //Initialization code, state vars etc, all go here

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => HomeView(this);

//Control logic grouped together, at top of file
}
