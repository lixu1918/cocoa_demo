//
//  MainViewController.m
//  cocoactrls
//
//  Created by apple on 2021/5/14.
//  Copyright © 2021 CYG. All rights reserved.
//

#import "LeftViewController.h"

@interface LeftViewController ()

@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

-(IBAction)onComboBox:(id)sender
{
    NSComboBox* comboBox = (NSComboBox*)sender;
    self.labelComboText.stringValue = comboBox.stringValue;
}

-(IBAction)onRadioBox:(id)sender
{
    NSButton* btn = (NSButton*)sender;
    NSString* text;
    if (btn == self.radioBox1) {
        text = @"left";
    } else {
        text = @"right";
    }
    self.labelRadioText.stringValue = text;
}

-(IBAction)onStepperAction:(id)sender
{
    NSStepper* stepper = (NSStepper*)sender;
    self.labelStepperText.integerValue = stepper.integerValue;
}

@end
