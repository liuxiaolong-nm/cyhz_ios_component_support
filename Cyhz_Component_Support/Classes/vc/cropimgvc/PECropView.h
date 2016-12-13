//
//  PECropView.h
//  PhotoCropEditor
//
//  Created by kishikawa katsumi on 2013/05/19.
//  Copyright (c) 2013 kishikawa katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>

@interface PECropView : UIView

@property (nonatomic) UIImage *image;
@property (nonatomic, readonly) UIImage *croppedImage;
@property (nonatomic, readonly) CGRect zoomedCropRect;
@property (nonatomic, readonly) CGAffineTransform rotation;
@property (nonatomic, readonly) BOOL userHasModifiedCropArea;

@property (nonatomic) BOOL keepingCropAspectRatio;
@property (nonatomic) CGFloat cropAspectRatio;

@property (nonatomic) CGRect cropRect;
@property (nonatomic) CGRect imageCropRect;

@property (nonatomic) CGFloat rotationAngle;

@property (nonatomic, weak, readonly) UIRotationGestureRecognizer *rotationGestureRecognizer;

//取景框的背景。
//liuxiaolong 201612131507
@property (nonatomic)UIImage *cropFrameImg;

//设置固定的取景框的区域。
//liuxiaolong 201612132006
@property (nonatomic)CGRect forceCropRect;

//取景框是否可以不滑动滑动。
//liuxiaolong 201612131517
@property (nonatomic)BOOL isNotSilde;

- (void)resetCropRect;
- (void)resetCropRectAnimated:(BOOL)animated;

- (void)setRotationAngle:(CGFloat)rotationAngle snap:(BOOL)snap;

@end
