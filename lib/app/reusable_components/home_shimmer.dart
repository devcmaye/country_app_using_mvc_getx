import 'package:country_app_using_mvc_getx/app/reusable_components/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeShimmer extends StatelessWidget {
  const HomeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.verticalSpace,
          Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerWidget.rectangular(
                    height: 24.h,
                    width: 107.w,
                  ),
                  8.verticalSpace,
                  ShimmerWidget.rectangular(
                    height: 24.h,
                    width: 197.w,
                  )
                ],
              )),
              20.horizontalSpace,
              ShimmerWidget.circular(width: 50.w, height: 50.h),
              8.horizontalSpace,
              ShimmerWidget.circular(width: 50.w, height: 50.h)
            ],
          ),
          24.verticalSpace,
          ShimmerWidget.rectangular(height: 144.h),
          16.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShimmerWidget.circular(width: 10.w, height: 10.w),
              8.horizontalSpace,
              ShimmerWidget.circular(width: 10.w, height: 10.w),
              8.horizontalSpace,
              ShimmerWidget.circular(width: 10.w, height: 10.w),
            ],
          ),
          24.verticalSpace,
          ShimmerWidget.rectangular(
            height: 24.h,
            width: 170.h,
          ),
          16.verticalSpace,
          ShimmerWidget.rectangular(height: 144.h),
          16.verticalSpace,
          ShimmerWidget.rectangular(height: 144.h),
          16.verticalSpace,
          ShimmerWidget.rectangular(height: 144.h),
        ],
      ),
    );
  }
}
