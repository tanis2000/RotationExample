//
//  RotationExampleAppDelegate.h
//  RotationExample
//
//  Created by Valerio Santinelli on 27/09/11.
//  Copyright 2011 Altralogica s.r.l. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseController.h"

@interface AppDelegate : NSObject <UIApplicationDelegate>
{
    BaseController *firstControllerPortrait;
}

@property (nonatomic, strong) IBOutlet UIWindow *window;

@property (nonatomic, strong) IBOutlet UINavigationController *navigationController;

+(AppDelegate *) get;
-(void)showStartingController;

@end
