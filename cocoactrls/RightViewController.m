//
//  RightViewController.m
//  cocoactrls
//
//  Created by apple on 2021/5/15.
//  Copyright © 2021 CYG. All rights reserved.
//

#import "RightViewController.h"

@interface RightViewController ()

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

@end
