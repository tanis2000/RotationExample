//
//  BaseController.h
//  RotationExample
//
//  Created by Valerio Santinelli on 27/09/11.
//  Copyright 2011 Altralogica s.r.l. All rights reserved.
//



@interface BaseController : UIViewController
{
    UILabel *label;
    UIButton *btn;
    
    BaseController *firstControllerLandscape;
}

@property(nonatomic,retain) IBOutlet UILabel *label;
@property(nonatomic,retain) IBOutlet UIButton *btn;

-(IBAction)doSomething:(id)sender;

@end
