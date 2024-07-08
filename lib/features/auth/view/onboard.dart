import 'package:be_spoke/core/utils/extensions.dart';
import '../../../core/utils/utils.dart';
import '../controller/onboard.dart';
import '../widget/onboard.dart';

class OnBoardView extends StatelessView<OnBoard, OnBoardController> {
  const OnBoardView(OnBoardController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: AppColors.backgroundWhite,
        body: _body(context));
  }

  Widget dotContainer(index, context) {
    return Container(
      height: 10,
      margin:REdgeInsets.symmetric(horizontal: 2),
      width: state.value == index ? 20 : 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: state.value == index ? Colors.black : Colors.black12,
      ),
    );
  }

  Widget _body(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.sp),
      child: Column(
        children: [
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
            height: 55.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) => dotContainer(index, context)),
              ),
              InkWell(
                onTap: () => state.goToRegister(),
                child: Container(


                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding:REdgeInsets.symmetric(horizontal: 18.0,vertical: 15),
                    child: 'Next'.toText(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        textHeight: 21.12 / 16.0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),


          // InkWell(
          //   onTap: () => state.goToLogin(),
          //   child: Container(
          //     height: 56.h,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       color: Colors.red,
          //       borderRadius: BorderRadius.circular(8.r),
          //     ),
          //     child: Center(
          //       child: 'login'.toText(
          //           color: Colors.white,
          //           fontSize: 16,
          //           fontWeight: FontWeight.w500,
          //           textHeight: 21.12 / 16.0),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 42.h,
          ),
        ],
      ),
    );
  }
}
