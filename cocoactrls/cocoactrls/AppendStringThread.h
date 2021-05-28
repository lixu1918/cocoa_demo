//
//  AppendStringThread.h
//  cocoactrls
//
//  Created by apple on 2021/5/28.
//  Copyright © 2021 CYG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppendStringThread : NSThread

@property(readwrite, weak)NSMutableString* str;
@property(readwrite, strong)NSString* appendix;
@property(readwrite, weak)NSLock* lock;

@end

NS_ASSUME_NONNULL_END
