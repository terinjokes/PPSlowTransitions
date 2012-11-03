//
//  RVRenderHandler+PPSlowTransition.h
//  PPSlowTransitions
//
//  Created by Terin Stock on 11/18/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#include "RVRenderHandler.h"

@interface RVRenderHandler (PPSlowTransition)

+ (void) loadSlowTransition;
- (void) _ppst_transition:(BOOL)arg1;

@end
