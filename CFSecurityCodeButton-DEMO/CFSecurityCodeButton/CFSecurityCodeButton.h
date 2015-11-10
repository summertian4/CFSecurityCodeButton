//
//  CFSecurityCodeButton.h
//  CFSecurityCodeButton
//
//  Created by 周凌宇 on 15/11/9.
//  Copyright © 2015年 周凌宇. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark ========================宏定义========================

#define CFColorCoral CFColor(255, 128, 135, 1)
#define CFColorDodgerBlue CFColor(30, 144, 255, 1)
#define CFColorDeepSkyBlue CFColor(0, 191, 255, 1)
#define CFColorTurquoise CFColor(64, 224, 208, 1)
#define CFColorWarmYellow CFColor(255, 239, 148, 1)
#define CFColorMediumPurple CFColor(147, 112, 219, 1)
#define CFColorSeaGreen CFColor(0, 160, 130, 1)

#define CFColor(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

#pragma mark ========================代理协议========================
@class CFSecurityCodeButton;
@protocol CFSecurityCodeButtonDelegate <NSObject>

- (void)securityCodeButtonDidClicked:(CFSecurityCodeButton *)securityCodeButton;
- (void)securityCodeButtonTimingEnded:(CFSecurityCodeButton *)securityCodeButton;

@end


#pragma mark ========================类定义========================
@interface CFSecurityCodeButton : UIButton

/**
 *  正常状态下的文字
 */
@property (nonatomic, copy) NSString *normalTitle;
/**
 *  禁用状态下的文字
 */
@property (nonatomic, copy) NSString *disabledTitle;
/**
 *  计时时间（秒单位）
 */
@property (nonatomic, assign) int time;

@property (nonatomic, weak) id<CFSecurityCodeButtonDelegate> delegate;

/**
 *  通过主题色创建CFSecurityCodeButton
 *
 *  @param buttonColor 主题色
 *
 *  @return CFSecurityCodeButton对象
 */
- (instancetype)initWithColor:(UIColor *)buttonColor;

@end
