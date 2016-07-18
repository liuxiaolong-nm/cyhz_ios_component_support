//
//  LayoutConstraintUtil.m
//  new_yanchebao
//
//  Created by liuxiaolong on 15/12/7.
//  Copyright © 2015年 yatai. All rights reserved.
//

#import "CyConstraintUtil.h"

@implementation CyConstraintUtil

+(NSLayoutConstraint*)createLeftLayoutConstraint:(float)constant Target:(UIView*)view First:(UIView*)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeLeading multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint*)createRightLayoutConstraint:(float)constant Target:(UIView*)view First:(UIView*)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint*)createTopLayoutConstraint:(float)constant Target:(UIView*)view First:(UIView*)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeTop multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint*)createBottomLayoutConstraint:(float)constant Target:(UIView*)view First:(UIView*)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint*)createConterHLayoutConstraint:(float)constant Target:(UIView*)view First:(UIView*)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint*)createConterHLayoutConstraint:(float)constant Multiplier:(float)multiplier Target:(UIView*)view First:(UIView*)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeCenterX multiplier:multiplier constant:constant];
    return constraint;
}

+(NSLayoutConstraint*)createConterVLayoutConstraint:(float)constant Target:(UIView*)view First:(UIView*)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint*)createConterVLayoutConstraint:(float)constant Multiplier:(float)multiplier Target:(UIView*)view First:(UIView*)firstView{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:firstView attribute:NSLayoutAttributeCenterY multiplier:multiplier constant:constant];
    return constraint;
}

+(NSLayoutConstraint*)createHeightLayoutConstraint:(float)constant Target:(UIView*)view{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:constant];
    return constraint;
}

+(NSLayoutConstraint*)createWidthLayoutConstraint:(float)constant Target:(UIView*)view{
    NSLayoutConstraint *constraint=[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:constant];
    return constraint;
}

+(UIViewController*)getUiViewController:(UIView*)simple{
    for (UIView* next = [simple superview]; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}

@end
