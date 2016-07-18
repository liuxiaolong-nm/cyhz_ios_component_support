//
//  LayoutConstraintUtil.h
//  new_yanchebao
//
//  Created by liuxiaolong on 15/12/7.
//  Copyright © 2015年 yatai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CyConstraintUtil : NSObject
/**
 *  创建view和父容器左内边距的约束。
 *
 *  @param constant  约束具体的树值。
 *  @param view      要添加约束的view。
 *  @param firstView 父容器。
 *
 *  @return 左内边距约束。
 *
 *  liuxiaolong 2016-06-02 16:36
 */
+(NSLayoutConstraint*)createLeftLayoutConstraint:(float)constant Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view和父容器右内边距约束。
 *
 *  @param constant  约束具体的树值。
 *  @param view      要添加约束的view。
 *  @param firstView 父容器。
 *
 *  @return 右内边距约束。
 *
 *  liuxiaolong 2016-06-02 17:04
 */
+(NSLayoutConstraint*)createRightLayoutConstraint:(float)constant Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view和父容器上内边距约束。
 *
 *  @param constant  约束具体的树值。
 *  @param view      要添加约束的view。
 *  @param firstView 父容器。
 *
 *  @return 上内边距约束。
 *
 *  liuxiaolong 2016-06-02 17:05
 */
+(NSLayoutConstraint*)createTopLayoutConstraint:(float)constant Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view和父容器下内边距约束。
 *
 *  @param constant  约束具体的树值。
 *  @param view      要添加约束的view。
 *  @param firstView 父容器。
 *
 *  @return 下内边距约束。
 *
 *  liuxiaolong 2016-06-02 17:07
 */
+(NSLayoutConstraint*)createBottomLayoutConstraint:(float)constant Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view相对父容器中心点X轴的约束（默认比例值是1.0，则view的中心点的X轴和父容器一样）。
 *
 *  @param constant  偏差值。
 *  @param view      要添加约束的view。
 *  @param firstView 父容器。
 *
 *  @return 中心点X轴的约束。
 *
 *  liuxiaolong 2016-06-02 17:07
 */
+(NSLayoutConstraint*)createConterHLayoutConstraint:(float)constant Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view相对父容器中心点X轴的约束。
 *
 *  @param constant   偏差值。
 *  @param multiplier 比例值。
 *  @param view       要添加约束的view。
 *  @param firstView  父容器。
 *
 *  @return 中心点X轴的约束。
 *
 *  liuxiaolong 2016-06-02 17:13
 */
+(NSLayoutConstraint*)createConterHLayoutConstraint:(float)constant Multiplier:(float)multiplier Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view相对父容器中心点Y轴的约束（默认比例值是1.0，则view的中心点的Y轴和父容器一样）。
 *
 *  @param constant  偏差值。
 *  @param view      要添加约束的view。
 *  @param firstView 父容器。
 *
 *  @return 中心点Y轴的约束。
 *
 *  liuxiaolong 2016-06-02 17:14
 */
+(NSLayoutConstraint*)createConterVLayoutConstraint:(float)constant Target:(UIView*)view First:(UIView*)firstView;
/**
 *  创建view相对父容器中心点Y轴的约束（默认是中心点Y轴相等）。
 *
 *  @param constant   偏差值。
 *  @param multiplier 比例值。
 *  @param view       要添加约束的view。
 *  @param firstView  父容器。
 *
 *  @return 中心点Y轴的约束。
 *
 *  liuxiaolong 2016-06-02 17:18
 */
+(NSLayoutConstraint*)createConterVLayoutConstraint:(float)constant Multiplier:(float)multiplier Target:(UIView*)view First:(UIView*)firstView;
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
+(NSLayoutConstraint*)createHeightLayoutConstraint:(float)constant Target:(UIView*)view;
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
+(NSLayoutConstraint*)createWidthLayoutConstraint:(float)constant Target:(UIView*)view;
/**
 *  通过view获取所在的vc对象。
 *
 *  @param simple 目标view。
 *
 *  @return 所在的vc。
 *
 *  liuxiaolong 2016-06-02 17:50
 */
+(UIViewController*)getUiViewController:(UIView*)simple;
@end
