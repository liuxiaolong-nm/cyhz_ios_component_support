//
//  LayoutConstraintUtil.h
//  new_yanchebao
//
//  Created by liuxiaolong on 15/12/7.
//  Copyright © 2015年 yatai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SupportConstraintUtil : NSObject
/**
 *  创建view和父容器左内边距的约束。
 *
 *  @param constant  约束具体的树值。
 *  @param view      要添加约束的view。
 *  @param contain 父容器。
 *
 *  @return 左内边距约束。
 *
 *  liuxiaolong 2016-06-02 16:36
 */
+(NSLayoutConstraint*)createLeading:(float)constant Target:(UIView*)view Contain:(UIView*)contain;
/**
 *  创建view和父容器右内边距约束。
 *
 *  @param constant  约束具体的树值。
 *  @param view      要添加约束的view。
 *  @param contain 父容器。
 *
 *  @return 右内边距约束。
 *
 *  liuxiaolong 2016-06-02 17:04
 */
+(NSLayoutConstraint*)createTrailing:(float)constant Target:(UIView*)view Contain:(UIView*)contain;
/**
 *  创建view和父容器顶部边距约束（内边距是为负数，比如相对父容器某条边的距离为x，那么传入的参数应为-x）。
 *
 *  @param constant  约束具体的树值。
 *  @param view      要添加约束的view。
 *  @param firstView 父容器（或兄弟view）。
 *
 *  @return 上内边距约束。
 *
 *  liuxiaolong 2016-06-02 17:05
 */
+(NSLayoutConstraint*)createTop:(float)constant Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view和父容器（或兄弟view）下边距约束（内边距是为负数，比如相对兄弟容器某条边的距离为x，那么传入的参数应为-x）。
 *
 *  @param constant  约束具体的树值。
 *  @param view      要添加约束的view。
 *  @param firstView 父容器（或兄弟view）。
 *
 *  @return 下内边距约束。
 *
 *  liuxiaolong 2016-06-02 17:07
 */
+(NSLayoutConstraint*)createBottom:(float)constant Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view相对兄弟容器的左边距的距离。
 *
 *  @param constant  偏差值。
 *  @param view      要添加约束的view。
 *  @param firstView 兄弟view。
 *
 *  @return 左约束。
 *
 *  liuxiaolong 2016-06-02 17:07
 */
+(NSLayoutConstraint*)createLeft:(float)constant Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view相对兄弟容器的右边距的约束（内边距是为负数，比如相对兄弟容器某条边的距离为x，那么传入的参数应为-x）。
 *
 *  @param constant  偏差值。
 *  @param view      要添加约束的view。
 *  @param firstView 兄弟view。
 *
 *  @return 左约束。
 *
 *  liuxiaolong 2016-06-02 17:07
 */
+(NSLayoutConstraint*)createRight:(float)constant Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view相对父容器（或兄弟view）中心点X轴的约束（默认比例值是1.0，则view的中心点的X轴和父容器一样）。
 *
 *  @param constant  偏差值。
 *  @param view      要添加约束的view。
 *  @param firstView 父容器（或兄弟view）。
 *
 *  @return 中心点X轴的约束。
 *
 *  liuxiaolong 2016-06-02 17:07
 */
+(NSLayoutConstraint*)createConterX:(float)constant Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view相对父容器（或兄弟view）中心点X轴的约束。
 *
 *  @param constant   偏差值。
 *  @param multiplier 比例值。
 *  @param view       要添加约束的view。
 *  @param firstView  父容器或兄弟view。
 *
 *  @return 中心点X轴的约束。
 *
 *  liuxiaolong 2016-06-02 17:13
 */
+(NSLayoutConstraint*)createConterX:(float)constant Multiplier:(float)multiplier Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view相对父容器（或兄弟view）中心点Y轴的约束（默认比例值是1.0，则view的中心点的Y轴和父容器一样）。
 *
 *  @param constant  偏差值。
 *  @param view      要添加约束的view。
 *  @param firstView 父容器或兄弟view。
 *
 *  @return 中心点Y轴的约束。
 *
 *  liuxiaolong 2016-06-02 17:14
 */
+(NSLayoutConstraint*)createConterY:(float)constant Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view相对父容器（或兄弟view）中心点Y轴的约束（默认是中心点Y轴相等）。
 *
 *  @param constant   偏差值。
 *  @param multiplier 比例值。
 *  @param view       要添加约束的view。
 *  @param firstView  父容器或兄弟view。
 *
 *  @return 中心点Y轴的约束。
 *
 *  liuxiaolong 2016-06-02 17:18
 */
+(NSLayoutConstraint*)createConterY:(float)constant Multiplier:(float)multiplier Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view高度约束。
 *
 *  @param constant 附加值。
 *  @param view     要添加约束的view。
 *
 *  @return 高度的约束。
 *
 *  liuxiaolong 2016-06-02 17:19
 */
+(NSLayoutConstraint*)createHeight:(float)constant Target:(UIView*)view;
/**
 *  创建view宽度的约束。
 *
 *  @param constant 附加值。
 *  @param view     要添加约束的view。
 *
 *  @return 宽度的约束。
 *
 *  liuxiaolong 2016-06-02 17:47
 */
+(NSLayoutConstraint*)createWidth:(float)constant Target:(UIView*)view;
/**
 *  创建Target相对firstView的高度。
 *
 *  @param constant   差值
 *  @param multiplier 比例
 *  @param view       目标view
 *  @param firstView  相对view
 *
 *  @return 生成的约束。
 *
 *  liuxiaolong 2016-07-25 17:06
 */
+(NSLayoutConstraint*)createHeightEqual:(float)constant Multiplier:(float)multiplier Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建Target相对firstView的宽度。
 *
 *  @param constant   差值
 *  @param multiplier 比例
 *  @param view       目标view
 *  @param firstView  相对
 *
 *  @return 生成的约束。
 *
 *  liuxiaolong 2016-07-25 17:09
 */
+(NSLayoutConstraint*)createWidthEqual:(float)constant Multiplier:(float)multiplier Target:(UIView*)view First:(UIView*)firstView;
/**
 *  contain添加子view target 约束相对contain。
 *
 *  @param lttb    @[Leading，Top，Trailing，Bottom] --> @[@x,@x,@x,@x]
 *  @param target  target
 *  @param contain contain
 *
 *  liuxiaolong 2016-07-26 11:10
 */
+(void)leadingTopTrailingBottomForContain:(NSArray<NSNumber*>*)lttb Target:(UIView*)target Contain:(UIView*)contain;
/**
 *  contain添加子view target 约束相对contain。
 *
 *  @param lttb    @[Leading，Top，width，height] --> @[@x,@x,@x,@x]
 *  @param target  target
 *  @param contain contain
 *
 *  liuxiaolong 2016-07-26 11:13
 */
+(void)leadingTopWidthHeightForContain:(NSArray<NSNumber*>*)lttb Target:(UIView*)target Contain:(UIView*)contain;
/**
 *  contain添加子view target 约束相对contain。
 *
 *  @param lttb    @[CenterX，centerY，width，height] --> @[@x,@x,@x,@x]
 *  @param target  target
 *  @param contain contain
 *
 *  liuxiaolong 2016-07-26 11:14
 */
+(void)centerXCenterYWidthHeightForContain:(NSArray<NSNumber*>*)lttb Target:(UIView*)target Contain:(UIView*)contain;
/**
 *  contain添加子view target 约束相对brother。
 *
 *  @param lttb    @[Left，Top，Right，Bottom] --> @[@x,@x,@x,@x]
 *  @param target  target
 *  @param brother brother
 *  @param contain contain
 *
 *  liuxiaolong 2016-07-26 11:22
 */
+(void)leftTopRightBottomForBrother:(NSArray<NSNumber*>*)lttb Target:(UIView*)target Brother:(UIView*)brother Contain:(UIView*)contain;
/**
 *  contain添加子view target 约束相对brother。
 *
 *  @param lttb    @[Left，Top，Width，Height] --> @[@x,@x,@x,@x]
 *  @param target  target
 *  @param brother brother
 *  @param contain contain
 *
 *  liuxiaolong 2016-07-26 11:26
 */
+(void)leftTopWidthHeightForBrother:(NSArray<NSNumber*>*)lttb Target:(UIView*)target Brother:(UIView*)brother Contain:(UIView*)contain;
/**
 *  contain添加子view target 约束相对brother。
 *
 *  @param lttb    @[CenterX，CenterY，Width，Height] --> @[@x,@x,@x,@x]
 *  @param target  target
 *  @param brother brother
 *  @param contain contain
 *
 *  liuxiaolong 2016-07-26 11:27
 */
+(void)centerXCenterYWidthHeightForBrother:(NSArray<NSNumber*>*)lttb Target:(UIView*)target Brother:(UIView*)brother Contain:(UIView*)contain;

@end
