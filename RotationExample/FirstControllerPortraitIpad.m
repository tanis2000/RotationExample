//
//  FirstControllerPortraitIpad.m
//  RotationExample
//
//  Created by Valerio Santinelli on 27/09/11.
//  Copyright 2011 Altralogica s.r.l. All rights reserved.
//

#import "FirstControllerPortraitIpad.h"
#import "FirstControllerLandscapeIpad.h"
#import "AppDelegate.h"

@implementation FirstControllerPortraitIpad

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (firstControllerLandscape == nil) {
        firstControllerLandscape = [[FirstControllerLandscapeIpad alloc] initWithNibName:@"FirstControllerLandscapeIpad" bundle:nil];
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    if (UIDeviceOrientationIsLandscape([[UIDevice currentDevice] orientation]) && [AppDelegate get].navigationController.topViewController == self)
	{
        [[AppDelegate get].navigationController pushViewController:firstControllerLandscape animated:NO];
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    if (UIDeviceOrientationIsLandscape(toInterfaceOrientation) && [AppDelegate get].navigationController.topViewController == self)
    {
        [[AppDelegate get].navigationController pushViewController:firstControllerLandscape animated:YES];
    }
	else if (UIDeviceOrientationIsPortrait(toInterfaceOrientation) && [AppDelegate get].navigationController.topViewController == firstControllerLandscape)
	{
        [[AppDelegate get].navigationController popViewControllerAnimated:YES];
        
    }
}


@end
