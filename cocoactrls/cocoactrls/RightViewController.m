//
//  RightViewController.m
//  cocoactrls
//
//  Created by apple on 2021/5/15.
//  Copyright © 2021 CYG. All rights reserved.
//

#import "RightViewController.h"
#import "AppendStringThread.h"
#import "PrintStringThread.h"

@interface RightViewController ()
{
    NSMutableString* _common_string;
    PrintStringThread* _print_thread;
}

//@property (readwrite, weak)PrintStringThread* print_thread;

@end

@implementation RightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

- (IBAction)onButtonDocumentPath:(id)sender
{
    NSArray<NSString*> *sp = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                                 NSAllDomainsMask,
                                                                 true);
    NSString* docPath = sp.count > 0 ? sp[0] : @"";
    self.viewString = [NSString stringWithFormat:@"%@\n%@", docPath, docPath];
    //    self.textView.string = [NSString stringWithFormat:@"%@\n%@", docPath, docPath];
}

- (IBAction)onButtonThread:(id)sender
{
    _common_string = [[NSMutableString alloc] init];
    NSLock* lock = [[NSLock alloc] init];
    [_common_string appendString:@"$\n"];
    AppendStringThread* t1 = [[AppendStringThread alloc] init];
    t1.str = _common_string;
    t1.appendix = @"4";
    t1.lock = lock;
    AppendStringThread* t2 = [[AppendStringThread alloc] init];
    t2.str = _common_string;
    t2.appendix = @"8";
    t2.lock = lock;
    [t1 start];
    [t2 start];
    int count = 0;
    while (TRUE) {
        if (++count > 100) {
            break;
        }
        [lock lock];
        [_common_string appendString:@"0\n"];
        [lock unlock];
        [NSThread sleepForTimeInterval:0.10];
    }
    [NSThread sleepForTimeInterval:10];
    self.viewString = _common_string;
}

- (IBAction)onButtonPrintString:(id)sender
{
    if (_print_thread)
    {
        _print_thread.stop_running = TRUE;
        _print_thread = nil;
    }
    else
    {
        _print_thread = [[PrintStringThread alloc] init];
        [_print_thread start];
//         = thread;
        NSLog(@"creat print string thread");
    }
}

@end
