import 'package:be_spoke/core/utils/extensions.dart';
import '../../../core/utils/utils.dart';
import '../controller/home.dart';

class HomeView extends StatelessView<Home, HomeController> {
  const HomeView(HomeController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       
        backgroundColor: AppColors.backgroundWhite,
        body:_body()
    );
  }

  Widget _body() {
    return SafeArea(
      child: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16.0,vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    'Goodday Moses!'
                        .toText(fontSize: 14.sp, fontWeight: FontWeight.w500),
                    'What will you like to cook?'
                        .toText(fontSize: 17.sp, fontWeight: FontWeight.w600)
                  ],
                ),
                const Icon(Icons.notifications_none_outlined,color: Colors.amber,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
