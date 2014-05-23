//
//  ViewController.m
//  testCategories
//
//  Created by Mike on 2014-05-23.
//  Copyright (c) 2014 Mike. All rights reserved.
//

#import "ViewController.h"
#import "UIView+myCategoryName.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Mike Thinking Out Loud!";
    [label sizeToFit];
    label.frame = CGRectMake((self.view.frame.size.width-label.frame.size.width)/2,
                             (self.view.frame.size.height-label.frame.size.height)/2,
                             label.frame.size.width,
                             label.frame.size.height);
    [self.view addSubview:label];
    
    [label xyzMakeItRotate:-M_PI_2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
