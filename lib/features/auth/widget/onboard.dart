import 'package:be_spoke/core/utils/extensions.dart';

import '../../../core/data/model/model.dart';
import '../../../core/utils/utils.dart';

class OnboardWidget extends StatelessWidget {
  final Onboard data;
  const OnboardWidget({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          '${data.url}'.pngPicture(),
          SizedBox(
            height: 48.h,
          ),
          SizedBox(
            child: Text(
              textAlign: TextAlign.center,
              '${data.title}',style: TextStyle( fontWeight: FontWeight.w600,
              fontSize: 24.sp),)

          ),
          SizedBox(
            height: 11.sp,
          ),

          Text(
            textAlign: TextAlign.center,
            '${data.description}',style: TextStyle(fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            ),)
        ],
      ),
    );
  }
}