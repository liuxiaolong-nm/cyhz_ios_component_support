//
//  PEResizeControl.h
//  PhotoCropEditor
//
//  Created by kishikawa katsumi on 2013/05/19.
//  Copyright (c) 2013 kishikawa katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@protocol PEResizeControlViewDelegate;

@interface PEResizeControl : UIView

@property (nonatomic, weak) id<PEResizeControlViewDelegate> delegate;
@property (nonatomic, readonly) CGPoint translation;

//设置是否可以滑动。
//liuxiaolong 201612131514
@property BOOL isChange;

@end

@protocol PEResizeControlViewDelegate <NSObject>

- (void)resizeControlViewDidBeginResizing:(PEResizeControl *)resizeControlView;
- (void)resizeControlViewDidResize:(PEResizeControl *)resizeControlView;
- (void)resizeControlViewDidEndResizing:(PEResizeControl *)resizeControlView;

@end
