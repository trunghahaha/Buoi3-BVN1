//
//  ViewController.m
//  Buoi3-BVN1
//
//  Created by doductrung on 5/3/13.
//  Copyright (c) 2013 doductrung. All rights reserved.
//

#import "ViewController.h"
#import "Lion.h"
#import "Jaguar.h"
#import "Leopard.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Lion *lion1 = [Lion new];
    lion1.name = @"Lion1";
    lion1.subFamily = @"Panthera";
    [lion1 setUpDelegate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/// hinh anh chuyen dong
- (void) Move: (UIView *) view{
    int distance = 10;
    // di chuyen nut
    [UIView animateWithDuration:1.0f animations:^{
        view.frame = CGRectMake(view.frame.origin.x + distance, view.frame.origin.y, view.frame.size.width, view.frame.size.height);
        [self DisplaySoundText:view];
    }completion:^(BOOL finished) {
        if(view.frame.origin.x > 270)
            view.frame = CGRectMake(300, view.frame.origin.y, view.frame.size.width, view.frame.size.height);
        else if(view.frame.origin.x < 30)
            view.frame = CGRectMake(10, view.frame.origin.y, view.frame.size.width, view.frame.size.height);
    }];
}
- (void) DisplaySoundText: (UIView *) view {
    if(view.tag == 1) {
        [self.soundLb setText:@"Lion-family: Panthera"];
    }else if(view.tag == 2){
        [self.soundLb setText:@"Jaguar-family: Panthera"];
    }else if(view.tag == 3){
        [self.soundLb setText:@"Leopard-family: Panthera"];
    }
    self.soundLb.center = CGPointMake(view.center.x, view.center.y + 30);
}
- (IBAction)addAnimalTouch:(id)sender {
    if(rand()%3 == 0)
        [self addALion];
    else if (rand()%3 == 1)
        [self addAJaguar];
    else if (rand()%3 == 2)
        [self addALeopard];
    
}
- (void) addALion {
    Lion *lion1 = [Lion new];
    lion1.name = @"Lion1";
    lion1.subFamily = @"Panthera";
    lion1.longevity = 12;
    lion1.weight = 265;
    lion1.gestationPeriod = 110;
    lion1.sexualMaturity = 2;
    [lion1 setUpDelegate];
    [self.view addSubview:lion1.delegate];
    [Lion roar];
}
- (void) addAJaguar {
    Jaguar *jaguar1 = [Jaguar new];
    jaguar1.name = @"Jaguar1";
    jaguar1.subFamily = @"Panthera";
    [jaguar1 setUpDelegate];
    [self.view addSubview:jaguar1.delegate];
    [Jaguar roar];
}

- (void) addALeopard {
    Leopard *leopard1 = [Leopard new];
    leopard1.name = @"Leopard1";
    leopard1.subFamily = @"Panthera";
    [leopard1 setUpDelegate];
    [self.view addSubview:leopard1.delegate];
    [Leopard roar];
}
/// touch and move on screen
/// bat dau cham vao man hinh
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch began");
    UITouch *myTouch = [touches anyObject];
    if(myTouch.view.tag == 0){
        self.soundLb.text = @"";
        self.headerLb.alpha = 0;
    }
}
/// giu doi tuong va di chuyen ngon tay
- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *myTouch = [touches anyObject];
    CGPoint point = [myTouch locationInView:self.view];
    // phat hien xem co touch vao anh hay khong
    // bang viec so sanh tag
    // cac view co the phan biet nhau bang tag
    if(myTouch.view.tag > 0){
        // di chuyen anh tai vi tri touch
        myTouch.view.center = point;
    }
    /*NSLog(@"tag=%@", [NSString stringWithFormat:@"%i", myTouch.view.tag]);*/
    
}
/// tha doi tuong
- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch ended");
    UITouch *myTouch = [touches anyObject];
    if(myTouch.view.tag > 0){
        if(myTouch.view.center.x > 263 && myTouch.view.center.y > 295){
            [myTouch.view removeFromSuperview];
        }else{
            if(myTouch.view.tag == 1)
                NSLog(@"a lion");
            else if (myTouch.view.tag == 2)
                NSLog(@"a jaguar");
            else if (myTouch.view.tag == 3)
                NSLog(@"a leopard");
            // di chuyen anh tai vi tri touch
            [self Move:myTouch.view];
        }
    }
}
@end
