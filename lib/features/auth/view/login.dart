import 'package:be_spoke/core/utils/extensions.dart';
import '../../../core/utils/utils.dart';
import '../controller/login.dart';

class LoginView
    extends StatelessView<Login, LoginController> {
  const LoginView(LoginController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.backgroundWhite, body: _body());
  }

  Widget _body() {
    return Center(child: 'chef'.pngPicture(),);
  }
}
