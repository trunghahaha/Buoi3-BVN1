//
//  ViewController.h
//  Buoi3-BVN1
//
//  Created by doductrung on 5/3/13.
//  Copyright (c) 2013 doductrung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)addAnimalTouch:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *soundLb;
@property (weak, nonatomic) IBOutlet UILabel *headerLb;
@property (weak, nonatomic) IBOutlet UIImageView *binUIView;

@end
