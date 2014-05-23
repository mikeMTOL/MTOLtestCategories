//
//  NSString+mikeString.m
//  testCategories
//
//  Created by Mike on 2014-05-23.
//  Copyright (c) 2014 Mike. All rights reserved.
//
#import <objc/runtime.h>
#import "UIView+myCategoryName.h"

static NSString *key = @"xyzRadAngleKey";

@implementation UIView (myCategoryName)

@dynamic xyzRadAngle;

-(void) xyzMakeItRotate:(CGFloat)rad_angle
{
    // apply a rotation transformation
    self.transform = CGAffineTransformMakeRotation(rad_angle);
    
    // saving rad_angle as associated object means we must
    // first cast CGFloat into NSNumber then save that object
    // to retreive, we retreive an NSNumber
    NSNumber *radAngleNumber = [NSNumber numberWithFloat:rad_angle];
    objc_setAssociatedObject(self, &key, radAngleNumber, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
   
}

-(NSNumber*)xyzRadAngle
{
    NSNumber *retval = @0.0f;
    
    NSNumber *number = objc_getAssociatedObject(self, &key);
    
    // make sure that there was an object saved,
    if(number) {
        retval = number;
    }
    return retval;
}

@end
