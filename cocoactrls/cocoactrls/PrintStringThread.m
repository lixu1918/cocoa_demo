//
//  PrintStringThread.m
//  cocoactrls
//
//  Created by apple on 2021/5/31.
//  Copyright © 2021 CYG. All rights reserved.
//

#import "PrintStringThread.h"

@implementation PrintStringThread

- (void)dealloc
{
    NSLog(@"deallcok");
}

- (void) main
{
    while (!self.stop_running)
    {
        NSLog(@"---loooog---");
    }
}

@end
