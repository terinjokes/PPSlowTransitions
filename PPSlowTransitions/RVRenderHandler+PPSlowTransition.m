//
//  RVRenderHandler+PPSlowTransition.m
//  PPSlowTransitions
//
//  Created by Terin Stock on 11/18/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RVRenderHandler+PPSlowTransition.h"
#import </usr/include/objc/objc-class.h>

@implementation RVRenderHandler (PPSlowTransition)

+ (void) loadSlowTransition
{
    Method oldMethod, newMethod;
    
    oldMethod = class_getInstanceMethod([self class], @selector(transition:));
    newMethod = class_getInstanceMethod([self class], @selector(_ppst_transition:));
    method_exchangeImplementations(oldMethod, newMethod);
}

- (void) _ppst_transition:(BOOL)arg1
{
    float time = [self transitionTime];
    
    NSUInteger flags = [[NSApp currentEvent] modifierFlags];
    if (flags & NSShiftKeyMask) {
        [self setTransitionTime:(time * 5.0)];
    }
    [self _ppst_transition:arg1];
    [self setTransitionTime:time];
}

@end
