//
//  UIView+ML_BlurView.h
//  BlurImageView
//
//  Created by malong on 15/1/13.
//  Copyright (c) 2015年 LanOu3g. All rights reserved.
//

/*!
 模糊效果选项
 */
typedef enum {
    kUIBlurEffectStyleExtraLight = 0,
    kUIBlurEffectStyleLight,
    kUIBlurEffectStyleDark
}BlurStyle;

#import <UIKit/UIKit.h>

@interface UIView (ML_BlurView)

/*!
 *  @brief  显示模糊效果
 *
 *  @param duration  模糊消失时间，为0时不消失
 *  @param blurStyle 模糊效果类型
 *  @param hidenViews 需要隐藏的界面
 */
- (void)showBlurWithDuration:(NSTimeInterval)duration
                   blurStyle:(BlurStyle)blurStyle
                   hidenViews:(NSArray *)hidenViews;

@end
