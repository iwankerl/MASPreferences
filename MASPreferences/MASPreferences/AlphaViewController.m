//
//  AlphaViewController.m
//  MASPreferences
//
//  Created by Isaac Wankerl on 6/2/14.
//  Copyright (c) 2014 Kerlmax LLC. All rights reserved.
//

#import "AlphaViewController.h"
#import "MASPreferencesViewController.h"

@interface AlphaViewController () <MASPreferencesViewController>

@end

@implementation AlphaViewController

- (id)init
{
	return [self initWithNibName:@"AlphaViewController" bundle:nil];
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
	return [NSImage imageNamed:NSImageNamePreferencesGeneral];
}

- (NSString *)toolbarItemLabel
{
	return @"Alpha";
}

@end
