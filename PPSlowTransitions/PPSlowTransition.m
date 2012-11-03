//
//  PPSlowTransition.m
//  PPSlowTransitions
//
//  Created by Terin Stock on 11/18/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "PPSlowTransition.h"
#import "RVRenderHandler+PPSlowTransition.h"
#import "ProWindow+PPSlowTransition.h"

@implementation PPSlowTransition

+ (void)load
{
    [RVRenderHandler loadSlowTransition];
    [ProWindow loadSlowTransition];
}

@end
