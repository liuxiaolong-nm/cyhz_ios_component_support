//
//  OMGToast.h
//  souchetong
//
//  Created by talent_xia on 14-6-20.
//  Copyright (c) 2014年 uustock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#define DEFAULT_DISPLAY_DURATION 2.0f

@interface OMGToast : NSObject {
    NSString *text;
    UIButton *contentView;
    CGFloat  duration;
}

@property BOOL isShow;
- (id)initWithText:(NSString *)text_;
- (void)show;
-(void)dismissToast;
-(void)hideAnimation;

+ (void)showWithText:(NSString *) text_;
+ (void)showWithText:(NSString *) text_
            duration:(CGFloat)duration_;

+ (void)showWithText:(NSString *) text_
           topOffset:(CGFloat) topOffset_;
+ (void)showWithText:(NSString *) text_
           topOffset:(CGFloat) topOffset
            duration:(CGFloat) duration_;

+ (void)showWithText:(NSString *) text_
        bottomOffset:(CGFloat) bottomOffset_;
+ (void)showWithText:(NSString *) text_
        bottomOffset:(CGFloat) bottomOffset_
            duration:(CGFloat) duration_;

@end