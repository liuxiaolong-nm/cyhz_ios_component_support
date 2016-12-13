//
//  PECropRectView.h
//  PhotoCropEditor
//
//  Created by kishikawa katsumi on 2013/05/21.
//  Copyright (c) 2013 kishikawa katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PECropRectViewDelegate;

@interface PECropRectView : UIView

@property (nonatomic, weak) id<PECropRectViewDelegate> delegate;
@property (nonatomic) BOOL showsGridMajor;
@property (nonatomic) BOOL showsGridMinor;

@property (nonatomic) BOOL keepingAspectRatio;
//取景框的背景。
//liuxiaolong 201612131507
@property (nonatomic)UIImage *cropFrameImg;

//取景框是否可以不滑动滑动。
//liuxiaolong 201612131517
@property (nonatomic)BOOL isNotSilde;

@end

@protocol PECropRectViewDelegate <NSObject>

- (void)cropRectViewDidBeginEditing:(PECropRectView *)cropRectView;
- (void)cropRectViewEditingChanged:(PECropRectView *)cropRectView;
- (void)cropRectViewDidEndEditing:(PECropRectView *)cropRectView;

@end

