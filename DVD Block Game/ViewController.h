//
//  ViewController.h
//  DVD Block Game
//
//  Created by Liam Patterson on 6/4/14.
//  Copyright (c) 2014 Liam Patterson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate> {
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    NSInteger count;
    NSInteger conversion;
    NSInteger seconds;
//    CGFloat seconds;
//# define CGFLOAT_TYPE integer
//# define CGFLOAT_IS_DOUBLE 1
    NSTimer *timer;
    NSTimeInterval startTime, endTime, elapsedTime;

    
    NSInteger Clacount;
    NSInteger Claseconds;
    NSTimer *Clatimer;
    //NSInteger = CGFloat seconds;
    

    
    IBOutlet UIButton *button;
    
}

- (IBAction)buttonPressed;

@end
