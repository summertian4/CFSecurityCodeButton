//
//  NSTimer+WLYWeakTimer.m
//  Remote
//
//  Created by 周凌宇 on 17/2/21.
//  Copyright © 2015年 周凌宇. All rights reserved.
//

#import "NSTimer+ZLYWeakTimer.h"

@implementation NSTimer (ZLYWeakTimer)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)timeInterval
                                    repeats:(BOOL)repeats
                               handlerBlock:(void(^)())handler {
    return [self scheduledTimerWithTimeInterval:timeInterval
                                         target:self
                                       selector:@selector(handlerBlockInvoke:)
                                       userInfo:[handler copy]
                                        repeats:repeats];
}

+ (void)handlerBlockInvoke:(NSTimer *)timer {
    void (^block)() = timer.userInfo;
    if (block) {
        block();
    }
}

@end
