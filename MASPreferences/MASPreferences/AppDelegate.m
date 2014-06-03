//
//  AppDelegate.m
//  MASPreferences
//
//  Created by Isaac Wankerl on 5/29/14.
//  Copyright (c) 2014 Kerlmax LLC. All rights reserved.
//

#import "AppDelegate.h"
#import "MASPreferencesWindowController.h"
#import "AlphaViewController.h"
#import "BetaViewController.h"
#import "GammaViewController.h"

@interface AppDelegate ()

@property (strong, nonatomic) MASPreferencesWindowController *preferencesWindowController;

@end

@implementation AppDelegate

- (void)showPreferencesWindow
{
	if (!self.preferencesWindowController)
	{
		NSArray *viewControllers =
		@[
			[[AlphaViewController alloc] init],
			[[BetaViewController alloc] init],
			[[GammaViewController alloc] init],
		];
		MASPreferencesWindowController *preferencesWindowController = [[MASPreferencesWindowController alloc] initWithViewControllers:viewControllers title:@"MASPreferences app"];
		self.preferencesWindowController = preferencesWindowController;
	}
	[self.preferencesWindowController showWindow:nil];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	[self showPreferencesWindow];
}

@end
