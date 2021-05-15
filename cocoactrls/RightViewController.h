//
//  RightViewController.h
//  cocoactrls
//
//  Created by apple on 2021/5/15.
//  Copyright © 2021 CYG. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface RightViewController : NSViewController

@property (weak) IBOutlet NSTextView* textView;

- (IBAction)onButtonDocumentPath:(id)sender;

@end

NS_ASSUME_NONNULL_END
