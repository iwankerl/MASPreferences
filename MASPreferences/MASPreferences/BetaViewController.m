//
//  BetaViewController.m
//  MASPreferences
//
//  Created by Isaac Wankerl on 6/2/14.
//  Copyright (c) 2014 Kerlmax LLC. All rights reserved.
//

#import "BetaViewController.h"
#import "MASPreferencesViewController.h"

@interface BetaViewController () <MASPreferencesViewController>

@end

@implementation BetaViewController

- (id)init
{
	return [self initWithNibName:@"BetaViewController" bundle:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

#pragma mark - MASPreferencesViewController

- (NSString *)identifier
{
	return NSStringFromClass([self class]);
}

- (NSImage *)toolbarItemImage
{
	return [NSImage imageNamed:NSImageNameUserAccounts];
}

- (NSString *)toolbarItemLabel
{
	return @"Beta";
}

@end
