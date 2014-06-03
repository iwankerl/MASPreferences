//
//  GammaViewController.m
//  MASPreferences
//
//  Created by Isaac Wankerl on 6/2/14.
//  Copyright (c) 2014 Kerlmax LLC. All rights reserved.
//

#import "GammaViewController.h"
#import "MASPreferencesViewController.h"

@interface GammaViewController () <MASPreferencesViewController>

@end

@implementation GammaViewController

- (id)init
{
	return [self initWithNibName:@"GammaViewController" bundle:nil];
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
	return [NSImage imageNamed:NSImageNameAdvanced];
}

- (NSString *)toolbarItemLabel
{
	return @"Gamma";
}

@end
