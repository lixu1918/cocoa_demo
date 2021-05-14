//
//  LeftViewController.h
//  cocoactrls
//
//  Created by apple on 2021/5/14.
//  Copyright © 2021 CYG. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface LeftViewController : NSViewController

@property (weak) IBOutlet NSTextField* labelComboText;

-(IBAction)onComboBox:(id)sender;

@end

NS_ASSUME_NONNULL_END
