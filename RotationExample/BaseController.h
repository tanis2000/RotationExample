//
//  BaseController.h
//  RotationExample
//
//  Created by Valerio Santinelli on 27/09/11.
//  Copyright 2011 Altralogica s.r.l. All rights reserved.
//

#import "SecondController.h"

@interface BaseController : UIViewController
{
    UILabel *label;
    UIButton *btn;
    
    BaseController *firstControllerLandscape;
    SecondController *secondController;
}

@property(nonatomic,strong) IBOutlet UILabel *label;
@property(nonatomic,strong) IBOutlet UIButton *btn;

-(IBAction)doSomething:(id)sender;

@end
