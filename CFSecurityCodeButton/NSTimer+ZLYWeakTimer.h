//
//  NSTimer+WLYWeakTimer.h
//  Remote
//
//  Created by 周凌宇 on 17/2/21.
//  Copyright © 2015年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (WLYWeakTimer)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)timeInterval
                                    repeats:(BOOL)repeats
                               handlerBlock:(void(^)())handler;
@end
