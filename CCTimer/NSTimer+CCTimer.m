//
//  NSTimer+CCTimer.m
//  CCTimer
//
//  Created by cassidy on 2020/11/4.
//  Copyright © 2020 cassidy. All rights reserved.
//

#import "NSTimer+CCTimer.h"


@implementation NSTimer (CCTimer)

+(NSTimer *)cc_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void(^)(void))block{
    NSTimer * timer = [NSTimer scheduledTimerWithTimeInterval:interval target:self selector:@selector(cc_blockSelector:) userInfo:[block copy] repeats:repeats];
    return  timer;
}
+(void)cc_blockSelector:(NSTimer *)timer{
    void(^block)(void) = timer.userInfo;
    if(block){
        block();
    }
}
@end
