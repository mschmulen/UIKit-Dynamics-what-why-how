//
//  FirstViewController.m
//  dynamicsdemo
//
//  Created by Matt Schmulen on 10/23/13.
//  Copyright (c) 2013 Matt Schmulen. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewSplash;

@property (nonatomic) UIDynamicAnimator* animator;
@property (nonatomic) UIGravityBehavior* gravityBehavior;

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    self.gravityBehavior = [[UIGravityBehavior alloc] initWithItems:@[self.imageViewSplash]];
    [self.animator addBehavior:self.gravityBehavior];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
