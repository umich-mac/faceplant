//
//  Responder.m
//  Faceplant
//
//  Created by Jim Zajkowski on 5/28/10.
//  Copyright 2010 The Regents of the University of Michigan.
//  Please see the file LICENSE for more details.
//

#import "Responder.h"

@implementation Responder

- (void) computerWillSleepNotification:(NSNotification *)notification {
	system("/sbin/shutdown -h +0");
}

@end
