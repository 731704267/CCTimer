//
//  NSTimer+CCTimer.h
//  CCTimer
//
//  Created by cassidy on 2020/11/4.
//  Copyright © 2020 cassidy. All rights reserved.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (CCTimer)
+(NSTimer *)cc_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void(^)(void))block;
@end

NS_ASSUME_NONNULL_END
