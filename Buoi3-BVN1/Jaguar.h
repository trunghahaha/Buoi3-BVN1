//
//  Jaguar.h
//  Buoi3-BVN1
//
//  Created by doductrung on 5/5/13.
//  Copyright (c) 2013 doductrung. All rights reserved.
//

#import "Cat.h"

@interface Jaguar : Cat
@property (nonatomic, strong) UIImageView *delegate;
- (void) setUpDelegate;
+ (void) roar;
@end
