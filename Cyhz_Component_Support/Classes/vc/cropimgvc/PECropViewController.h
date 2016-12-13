//
//  PECropViewController.h
//  PhotoCropEditor
//
//  Created by kishikawa katsumi on 2013/05/19.
//  Copyright (c) 2013 kishikawa katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PECropView.h"

@protocol PECropViewControllerDelegate;

@interface PECropViewController : UIViewController

@property (nonatomic, weak) id<PECropViewControllerDelegate> delegate;
@property (nonatomic) UIImage *image;

@property (nonatomic) BOOL keepingCropAspectRatio;
@property (nonatomic) CGFloat cropAspectRatio;

@property (nonatomic) CGRect cropRect;
@property (nonatomic) CGRect imageCropRect;

@property (nonatomic) PECropView *cropView;

@property (nonatomic) BOOL toolbarHidden;

@property (nonatomic, assign, getter = isRotationEnabled) BOOL rotationEnabled;

@property (nonatomic, readonly) CGAffineTransform rotationTransform;

@property (nonatomic, readonly) CGRect zoomedCropRect;

//取景框的背景。
//liuxiaolong 201612131747
@property (nonatomic)UIImage *cropFrameImg_PECrop;

//设置固定的取景框的区域。
//liuxiaolong 201612132006
@property (nonatomic)CGRect forceCropRect;

//取景框是否可以不滑动滑动。
//liuxiaolong 201612131747
@property (nonatomic)BOOL isNotSilde_PECrop;

- (void)resetCropRect;
- (void)resetCropRectAnimated:(BOOL)animated;

- (void)cancel:(id)sender;
- (void)done:(id)sender;

@end

@protocol PECropViewControllerDelegate <NSObject>
@optional
- (void)cropViewController:(PECropViewController *)controller didFinishCroppingImage:(UIImage *)croppedImage;
- (void)cropViewController:(PECropViewController *)controller didFinishCroppingImage:(UIImage *)croppedImage transform:(CGAffineTransform)transform cropRect:(CGRect)cropRect;
- (void)cropViewControllerDidCancel:(PECropViewController *)controller;

@end
