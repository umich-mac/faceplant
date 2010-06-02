//
//  Faceplant.m
//  Faceplant
//
//  Created by Jim Zajkowski on 5/28/10.
//  Copyright 2010 The Regents of the University of Michigan.
//  Please see the file LICENSE for more details.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
#import "Responder.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSNotificationCenter *nc = [[NSWorkspace sharedWorkspace] notificationCenter];
    Responder *responder = [[Responder alloc] init];
	
    // register for sleep notications
    [nc addObserver:responder
		   selector:@selector(computerWillSleepNotification:)
			   name:NSWorkspaceWillSleepNotification object:nil];
	
	// Busywait forever
    [[NSRunLoop currentRunLoop] run];
	
    [pool release];
    return 0;
}
