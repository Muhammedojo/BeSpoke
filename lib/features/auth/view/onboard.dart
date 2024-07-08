import 'package:be_spoke/core/utils/extensions.dart';
import '../../../core/utils/utils.dart';
import '../controller/onboard.dart';
import '../widget/onboard.dart';

class OnBoardView
    extends StatelessView<OnBoard, OnBoardController> {
  const OnBoardView(OnBoardController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.backgroundWhite, body: _body(context));
  }
  Widget dotContainer(index, context) {
    return Container(
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: state.value == index ? 20 : 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: state.value == index ? Colors.red : Colors.blue,
      ),
    );
  }
  Widget _body(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.sp),
      decoration:  BoxDecoration(
        color: Colors.orangeAccent.withOpacity(1.0)
          // image: DecorationImage(
          //     image: AssetImage('assets/images/bg.png'), fit: BoxFit.fill)
      ),
      child: Column(
        children: [
          SizedBox(
            height: 81.sp,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 90.w),
            child: SizedBox(height: 55.h, child: 'home_icon'.toSvg()),
          ),
          SizedBox(
            height: 25.sp,
          ),
          Expanded(
            child: SizedBox(
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: state.pageController,
                  itemCount: state.details.length,
                  onPageChanged: (value) => state.onPageChange(value),
                  itemBuilder: (ctx, index) {
                    return OnboardWidget(
                      data: state.details[index],
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 35.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            List.generate(3, (index) => dotContainer(index, context)),
          ),
          SizedBox(
            height: 75.h,
          ),
          Container(
            height: 56.h,
            width: double.infinity,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(8.r),
            ),
            child: ElevatedButton(
              onPressed: () {
                state.goToRegister();
              },
              child: 'Sign up'.toText(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  textHeight: 21.12 / 16.0),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 56.h,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: ElevatedButton(
              onPressed: () {
                state.goToLogin();
              },
              child: 'login'.toText(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  textHeight: 21.12 / 16.0),
            ),
          ),
          SizedBox(
            height: 22.h,
          ),
        ],
      ),
    );

  }

}



