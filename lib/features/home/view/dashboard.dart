import 'package:be_spoke/core/utils/extensions.dart';
import '../../../core/utils/utils.dart';
import '../controller/dashboard.dart';

class DashView extends StatelessView<Dash, DashController> {
  const DashView(DashController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        currentIndex: state.selectedIndex,
        selectedItemColor: Colors.red,
        onTap: state.onItemTapped,
      ),

      backgroundColor: AppColors.backgroundWhite,
      body:DashController.widgetOptions.elementAt(state.selectedIndex),
    );
  }


}
