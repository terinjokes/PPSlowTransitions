//
//  ProWindow+PPSlowTransition.m
//  PPSlowTransitions
//
//  Created by Terin Stock on 11/18/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ProWindow+PPSlowTransition.h"
#import </usr/include/objc/objc-class.h>

@implementation ProWindow (PPSlowTransition)

+ (void) loadSlowTransition
{
    Method oldMethod, newMethod;
    
    oldMethod = class_getInstanceMethod([self class], @selector(handleKeyDown:));
    newMethod = class_getInstanceMethod([self class], @selector(_ppst_handleKeyDown:));
    method_exchangeImplementations(oldMethod, newMethod);
}

- (BOOL)_ppst_handleKeyDown:(NSEvent *)event
{
    switch ([[event characters] characterAtIndex:0]) {
        case NSF1FunctionKey:
            [[NSApp delegate] clearAll:nil];
            return NO;
            break;
            
        case NSF2FunctionKey:
            [[NSApp delegate] clearSlide:nil];
            return NO;
            break;
            
        case NSF3FunctionKey:
            [[NSApp delegate] clearBackground:nil];
            return NO;
            break;
            
        case NSF4FunctionKey:
            [[NSApp delegate] clearProps:nil];
            return NO;
            break;
            
        case NSF5FunctionKey:
            [[NSApp delegate] clearAudio:nil];
            return NO;
            break;
            
        case NSF6FunctionKey:
            [[NSApp delegate] gotoLogo:nil];
            return NO;
            break;
            
        default:
            return [self _ppst_handleKeyDown:event];
            break;
    }
}

@end
