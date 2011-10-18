//
//  BaseController.m
//  RotationExample
//
//  Created by Valerio Santinelli on 27/09/11.
//  Copyright 2011 Altralogica s.r.l. All rights reserved.
//

#import "BaseController.h"
#import "AppDelegate.h"

@implementation BaseController

@synthesize label, btn;

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

-(void)dealloc
{
    if (secondController != nil) {
        secondController = nil;
    }
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}


#pragma mark - Our stuff

-(IBAction)doSomething:(id)sender
{
    if (secondController == nil) {
        secondController = [[SecondController alloc] initWithNibName:@"SecondController" bundle:nil];
    }
    
    if ([AppDelegate get].navigationController.topViewController == secondController) {
        return;
    }
    if ([[AppDelegate get].navigationController.viewControllers containsObject:secondController]) {
        [[AppDelegate get].navigationController popToViewController:secondController animated:YES];
        return;
    }
    [[AppDelegate get].navigationController pushViewController:secondController animated:YES];
}

@end
