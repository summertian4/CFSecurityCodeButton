//
//  ViewController.m
//  CFSecurityCodeButton
//
//  Created by 周凌宇 on 15/11/9.
//  Copyright © 2015年 周凌宇. All rights reserved.
//

#import "ViewController.h"
#import "CFSecurityCodeButton.h"

@interface ViewController () <CFSecurityCodeButtonDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CFSecurityCodeButton *btSecurityCode_Blue = [[CFSecurityCodeButton alloc] initWithColor:CFColorDodgerBlue];
    btSecurityCode_Blue.frame = CGRectMake(100, 100, 0, 0);
    btSecurityCode_Blue.time = 60;
    btSecurityCode_Blue.delegate = self;
    [self.view addSubview:btSecurityCode_Blue];
    
    CFSecurityCodeButton *btSecurityCode_DeepSkyBlue = [[CFSecurityCodeButton alloc] initWithColor:CFColorDeepSkyBlue];
    btSecurityCode_DeepSkyBlue.frame = CGRectMake(100, 150, 0, 0);
    btSecurityCode_DeepSkyBlue.time = 10;
    btSecurityCode_DeepSkyBlue.normalTitle = @"自定义normal状态文字内容";
    btSecurityCode_DeepSkyBlue.delegate = self;
    [self.view addSubview:btSecurityCode_DeepSkyBlue];
    
    CFSecurityCodeButton *btSecurityCode_SeaGreen = [[CFSecurityCodeButton alloc] initWithColor:CFColorSeaGreen];
    btSecurityCode_SeaGreen.frame = CGRectMake(100, 200, 0, 0);
    btSecurityCode_SeaGreen.time = 20;
    btSecurityCode_SeaGreen.disabledTitle = @"自定义disabled状态文字内容";
    btSecurityCode_SeaGreen.delegate = self;
    [self.view addSubview:btSecurityCode_SeaGreen];
    
    CFSecurityCodeButton *btSecurityCode_Coral = [[CFSecurityCodeButton alloc] initWithColor:CFColorCoral];
    btSecurityCode_Coral.frame = CGRectMake(100, 250, 0, 0);
    btSecurityCode_Coral.time = 30;
    btSecurityCode_Coral.normalTitle = @"自定义定时时间";
    btSecurityCode_Coral.delegate = self;
    [self.view addSubview:btSecurityCode_Coral];

    
    CFSecurityCodeButton *btSecurityCode_Turquoise = [[CFSecurityCodeButton alloc] initWithColor:CFColorTurquoise];
    btSecurityCode_Turquoise.frame = CGRectMake(100, 300, 0, 0);
    btSecurityCode_Turquoise.time = 40;
    btSecurityCode_Turquoise.normalTitle = @"别忘了设置代理";
    btSecurityCode_Turquoise.delegate = self;
    [self.view addSubview:btSecurityCode_Turquoise];
    
    CFSecurityCodeButton *btSecurityCode_WarmYellow = [[CFSecurityCodeButton alloc] initWithColor:CFColorWarmYellow];
    btSecurityCode_WarmYellow.frame = CGRectMake(100, 350, 0, 0);
    btSecurityCode_WarmYellow.time = 50;
    btSecurityCode_WarmYellow.normalTitle = @"根据主题色自动调节文字颜色";
    btSecurityCode_WarmYellow.delegate = self;
    [self.view addSubview:btSecurityCode_WarmYellow];
    
    
}

#pragma mark ========================实现代理========================
- (void)securityCodeButtonDidClicked:(CFSecurityCodeButton *)securityCodeButton {
    NSLog(@"securityCodeButtonDidClicked");
}

- (void)securityCodeButtonTimingEnded:(CFSecurityCodeButton *)securityCodeButton {
    NSLog(@"securityCodeButtonTimingEnded");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
