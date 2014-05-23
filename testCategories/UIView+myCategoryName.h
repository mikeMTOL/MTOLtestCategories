//
//  NSString+mikeString.h
//  testCategories
//
//  Created by Mike on 2014-05-23.
//  Copyright (c) 2014 Mike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIView (myCategoryName)

@property (readonly,nonatomic) NSNumber* xyzRadAngle;
-(void) xyzMakeItRotate:(CGFloat)rad_angle;

@end
