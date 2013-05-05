//
//  Lion.m
//  Buoi3-BVN1
//
//  Created by doductrung on 5/4/13.
//  Copyright (c) 2013 doductrung. All rights reserved.
//

#import "Lion.h"
@implementation Lion
- (void) setUpDelegate{
    NSString *imgPath = [[NSBundle mainBundle] pathForResource:@"lion" ofType:@"png"];
    UIImage *img = [UIImage imageWithContentsOfFile:imgPath];
    self.delegate = [[UIImageView alloc] initWithImage:img];
    self.delegate.frame = CGRectMake(rand()%300, rand()%480, 50, 50);
    // phai bat cai nay thi moi so sanh tag duoc
    self.delegate.userInteractionEnabled = true;
    self.delegate.tag = 1;
}
+ (void) roar {
    NSLog(@"Lion: Graooo...");
}
@end
