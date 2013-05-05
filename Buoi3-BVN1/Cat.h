//
//  Cat.h
//  Buoi3-BVN1
//
//  Created by doductrung on 5/4/13.
//  Copyright (c) 2013 doductrung. All rights reserved.
//

#import "Animal.h"

@interface Cat : Animal
@property (nonatomic, weak) NSString * name;
@property (nonatomic, weak) NSString * subFamily;
@property (nonatomic, assign) int weight;
@property (nonatomic, assign) int gestationPeriod;
@property (nonatomic, assign) int sexualMaturity;
@property (nonatomic, assign) int longevity;
@end
