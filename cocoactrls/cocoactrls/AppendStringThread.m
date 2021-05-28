//
//  AppendStringThread.m
//  cocoactrls
//
//  Created by apple on 2021/5/28.
//  Copyright © 2021 CYG. All rights reserved.
//

#import "AppendStringThread.h"

@implementation AppendStringThread

- (void)main
{
    while (TRUE) {
        [self.lock lock];
        for (int i = 0; i < 10; ++i) {
            [self.str appendString:self.appendix];
        }
        [self.str appendString:@"\n"];
        [self.lock unlock];
        [NSThread sleepForTimeInterval:0.1];
        if (self.str.length > 5000)
            break;
    }
}

@end
