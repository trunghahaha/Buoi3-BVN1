//
//  Jaguar.m
//  Buoi3-BVN1
//
//  Created by doductrung on 5/5/13.
//  Copyright (c) 2013 doductrung. All rights reserved.
//

#import "Jaguar.h"

@implementation Jaguar
- (void) setUpDelegate{
    NSString *imgPath = [[NSBundle mainBundle] pathForResource:@"jaguar" ofType:@"png"];
    UIImage *img = [UIImage imageWithContentsOfFile:imgPath];
    self.delegate = [[UIImageView alloc] initWithImage:img];
    self.delegate.frame = CGRectMake(rand()%300, rand()%480, 50, 50);
    // phai bat cai nay thi moi so sanh tag duoc
    self.delegate.userInteractionEnabled = true;
    self.delegate.tag = 2;
}
+ (void) roar {
    NSLog(@"Jaguar: Graooo...");
}
@end
