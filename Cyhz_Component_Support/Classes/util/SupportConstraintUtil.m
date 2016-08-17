//
//  LayoutConstraintUtil.m
//  new_yanchebao
//
//  Created by liuxiaolong on 15/12/7.
//  Copyright © 2015年 yatai. All rights reserved.
//

#import "SupportConstraintUtil.h"

@implementation SupportConstraintUtil

+(NSLayoutConstraint *)createLeading:(float)constant Target:(UIView *)view Contain:(UIView *)contain{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:contain attribute:NSLayoutAttributeLeading multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createTrailing:(float)constant Target:(UIView *)view Contain:(UIView *)contain{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:contain attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createTop:(float)constant Target:(UIView *)view First:(UIView *)firstView{
     NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeTop multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createBottom:(float)constant Target:(UIView *)view First:(UIView *)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createLeft:(float)constant Target:(UIView *)view First:(UIView *)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createRight:(float)constant Target:(UIView *)view First:(UIView *)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeRight multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createConterX:(float)constant Target:(UIView *)view First:(UIView *)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createConterX:(float)constant Multiplier:(float)multiplier Target:(UIView *)view First:(UIView *)firstView{
     NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeCenterX multiplier:multiplier constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createConterY:(float)constant Target:(UIView *)view First:(UIView *)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createConterY:(float)constant Multiplier:(float)multiplier Target:(UIView *)view First:(UIView *)firstView{
        NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeCenterY multiplier:multiplier constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createHeight:(float)constant Target:(UIView *)view{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createHeightEqual:(float)constant Multiplier:(float)multiplier Target:(UIView *)view First:(UIView *)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeHeight multiplier:multiplier constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createWidth:(float)constant Target:(UIView *)view{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint *)createWidthEqual:(float)constant Multiplier:(float)multiplier Target:(UIView *)view First:(UIView *)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeWidth multiplier:multiplier constant:constant];
    return constraint;
}

+(void)leadingTopTrailingBottomForContain:(NSArray<NSNumber*> *)lttb Target:(UIView *)target Contain:(UIView *)contain{
    if (lttb && lttb.count != 4) {
        return;
    }
    [target setTranslatesAutoresizingMaskIntoConstraints:NO];
    [contain addSubview:target];
    NSLayoutConstraint *leading = [SupportConstraintUtil createLeading:[lttb[0] floatValue] Target:target Contain:contain];
    NSLayoutConstraint *top = [SupportConstraintUtil createTop:[lttb[1] floatValue] Target:target First:contain];
    NSLayoutConstraint *trailing = [SupportConstraintUtil createTrailing:[lttb[2] floatValue] Target:target Contain:contain];
    NSLayoutConstraint *bottom = [SupportConstraintUtil createBottom:[lttb[3] floatValue] Target:target First:contain];
    [contain addConstraints:@[leading,top,trailing,bottom]];
}

+(void)leadingTopWidthHeightForContain:(NSArray<NSNumber *> *)lttb Target:(UIView *)target Contain:(UIView *)contain{
    if (lttb && lttb.count != 4) {
        return;
    }
    [target setTranslatesAutoresizingMaskIntoConstraints:NO];
    [contain addSubview:target];
    NSLayoutConstraint *leading = [SupportConstraintUtil createLeading:[lttb[0] floatValue] Target:target Contain:contain];
    NSLayoutConstraint *top = [SupportConstraintUtil createTop:[lttb[1] floatValue] Target:target First:contain];
    NSLayoutConstraint *width = [SupportConstraintUtil createWidth:[lttb[2] floatValue] Target:target];
    NSLayoutConstraint *height = [SupportConstraintUtil createHeight:[lttb[3] floatValue] Target:target];
    [contain addConstraints:@[leading,top,width,height]];
}

+(void)centerXCenterYWidthHeightForContain:(NSArray<NSNumber *> *)lttb Target:(UIView *)target Contain:(UIView *)contain{
    if (lttb && lttb.count != 4) {
        return;
    }
    [target setTranslatesAutoresizingMaskIntoConstraints:NO];
    [contain addSubview:target];
    NSLayoutConstraint *centerX = [SupportConstraintUtil createConterX:[lttb[0] floatValue] Target:target First:contain];
    NSLayoutConstraint *centerY = [SupportConstraintUtil createConterY:[lttb[1] floatValue] Target:target First:contain];
    NSLayoutConstraint *width = [SupportConstraintUtil createWidth:[lttb[2] floatValue] Target:target];
    NSLayoutConstraint *height = [SupportConstraintUtil createHeight:[lttb[3] floatValue] Target:target];
    [contain addConstraints:@[centerX,centerY,width,height]];
}

+(void)leftTopRightBottomForBrother:(NSArray<NSNumber *> *)lttb Target:(UIView *)target Brother:(UIView *)brother Contain:(UIView *)contain{
    if (lttb && lttb.count != 4) {
        return;
    }
    [target setTranslatesAutoresizingMaskIntoConstraints:NO];
    [contain addSubview:target];
    NSLayoutConstraint *left = [SupportConstraintUtil createLeft:[lttb[0] floatValue] Target:target First:brother];
    NSLayoutConstraint *top = [SupportConstraintUtil createTop:[lttb[1] floatValue] Target:target First:brother];
    NSLayoutConstraint *right = [SupportConstraintUtil createRight:[lttb[2] floatValue] Target:target First:brother];
    NSLayoutConstraint *bottom = [SupportConstraintUtil createBottom:[lttb[3] floatValue] Target:target First:brother];
    [contain addConstraints:@[left,top,right,bottom]];
}

+(void)leftTopWidthHeightForBrother:(NSArray<NSNumber *> *)lttb Target:(UIView *)target Brother:(UIView *)brother Contain:(UIView *)contain{
    if (lttb && lttb.count != 4) {
        return;
    }
    [target setTranslatesAutoresizingMaskIntoConstraints:NO];
    [contain addSubview:target];
    NSLayoutConstraint *left = [SupportConstraintUtil createLeft:[lttb[0] floatValue] Target:target First:brother];
    NSLayoutConstraint *top = [SupportConstraintUtil createTop:[lttb[1] floatValue] Target:target First:brother];
    NSLayoutConstraint *width = [SupportConstraintUtil createWidth:[lttb[2] floatValue] Target:target];
    NSLayoutConstraint *height = [SupportConstraintUtil createHeight:[lttb[3] floatValue] Target:target];
    [contain addConstraints:@[left,top,width,height]];
}

+(void)centerXCenterYWidthHeightForBrother:(NSArray<NSNumber *> *)lttb Target:(UIView *)target Brother:(UIView *)brother Contain:(UIView *)contain{
    if (lttb && lttb.count != 4) {
        return;
    }
    [target setTranslatesAutoresizingMaskIntoConstraints:NO];
    [contain addSubview:target];
    NSLayoutConstraint *centerX = [SupportConstraintUtil createConterX:[lttb[0] floatValue] Target:target First:brother];
    NSLayoutConstraint *centerY = [SupportConstraintUtil createConterY:[lttb[1] floatValue] Target:target First:brother];
    NSLayoutConstraint *width = [SupportConstraintUtil createWidth:[lttb[2] floatValue] Target:target];
    NSLayoutConstraint *height = [SupportConstraintUtil createHeight:[lttb[3] floatValue] Target:target];
    [contain addConstraints:@[centerX,centerY,width,height]];
}
@end
