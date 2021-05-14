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

@property int stepperIntValue;

@property (weak) IBOutlet NSTextField* labelComboText;
@property (weak) IBOutlet NSTextField* labelRadioText;
@property (weak) IBOutlet NSTextField* labelStepperText;
@property (weak) IBOutlet NSButton* radioBox1;
@property (weak) IBOutlet NSButton* radioBox2;

-(IBAction)onComboBox:(id)sender;
-(IBAction)onRadioBox:(id)sender;
-(IBAction)onStepperAction:(id)sender;

@end

NS_ASSUME_NONNULL_END
