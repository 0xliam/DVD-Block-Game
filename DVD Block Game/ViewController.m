//
//  ViewController.m
//  DVD Block Game
//
//  Created by Liam Patterson on 6/4/14.
//  Copyright (c) 2014 Liam Patterson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end



@implementation ViewController;
- (IBAction)endgamebutton:(UIButton *)sender {
    [timer invalidate];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You didn't hit the block!"
                                                    message:[NSString stringWithFormat:@"You scored %li points", (long)count]
                                                   delegate:self
                                          cancelButtonTitle:@"Play Again"
                                          otherButtonTitles:nil];
    
    [alert show];

}
//////
- (IBAction)Claendgamebutton:(UIButton *)sender {
    [Clatimer invalidate];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You didn't hit the block!"
                                                    message:[NSString stringWithFormat:@"You scored %li points", (long)count]
                                                   delegate:self
                                          cancelButtonTitle:@"Play Again"
                                          otherButtonTitles:nil];
    
    [alert show];
    
}
//////
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    startTime = [NSDate timeIntervalSinceReferenceDate];
    endTime = [NSDate timeIntervalSinceReferenceDate];
    elapsedTime = endTime - startTime;
    NSString *displayTime = [NSString stringWithFormat: @"%.3f", elapsedTime];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Ready to Play?"
                                                    message:[NSString stringWithFormat:@"", count]
                                                   delegate:self
                                          cancelButtonTitle:@"Start!"
                                          otherButtonTitles:nil];
    
    [alert show];
    }
/////
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/////
- (IBAction)buttonPressed {
    count++;
    seconds+=0.4;
    
    scoreLabel.text = [NSString stringWithFormat:@"%li", (long)count];
}


/////


- (IBAction)ClabuttonPressed {
    count++;
    
    
    scoreLabel.text = [NSString stringWithFormat:@"%li", (long)count];
}


/////


- (IBAction)buttonPress:(UIButton *)sender {
    
    int xmin = ([button frame].size.width)/2;
    int ymin = ([button frame].size.height)/2;
    
    int x = xmin + arc4random_uniform(self.view.frame.size.width - button.frame.size.width);
    int y = ymin + arc4random_uniform(self.view.frame.size.height - button.frame.size.height);
    
    
    [button setCenter:CGPointMake(x, y)];
    
}

/////

- (IBAction)ClabuttonPress:(UIButton *)sender {
    
    int xmin = ([button frame].size.width)/2;
    int ymin = ([button frame].size.height)/2;
    
    int x = xmin + arc4random_uniform(self.view.frame.size.width - button.frame.size.width);
    int y = ymin + arc4random_uniform(self.view.frame.size.height - button.frame.size.height);
    
    
    [button setCenter:CGPointMake(x, y)];
    
}

/////
-(IBAction) changeColOnClick:(id)sender
{
    int i = arc4random() % 7;
    NSArray *colors = [NSArray arrayWithObjects:[UIColor yellowColor],[UIColor redColor],[UIColor greenColor],[UIColor blueColor],[UIColor orangeColor],[UIColor purpleColor], [UIColor magentaColor], [UIColor cyanColor], nil];
    button.backgroundColor = [colors objectAtIndex:i];
    //label.text = [colors objectAtIndex:i]; //i is defined in the implementation
        
    if(i==[colors count])
    {
        i=0;
    }
}

/////
-(IBAction) ClachangeColOnClick:(id)sender
{
    int i = arc4random() % 7;
    NSArray *colors = [NSArray arrayWithObjects:[UIColor yellowColor],[UIColor redColor],[UIColor greenColor],[UIColor blueColor],[UIColor orangeColor],[UIColor purpleColor], [UIColor magentaColor], [UIColor cyanColor], nil];
    button.backgroundColor = [colors objectAtIndex:i];
    //label.text = [colors objectAtIndex:i]; //i is defined in the implementation
    
    if(i==[colors count])
    {
        i=0;
    }
}

/////
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self setupGame];
}

////
- (void)ClaalertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self ClasetupGame];
}

////
- (void)setupGame {
    seconds = 3;
    count = 0;
    
    
    int j = arc4random() % 7;
    NSArray *colors = [NSArray arrayWithObjects:[UIColor yellowColor],[UIColor redColor],[UIColor greenColor],[UIColor blueColor],[UIColor orangeColor],[UIColor purpleColor], [UIColor magentaColor], [UIColor cyanColor], nil];
    button.backgroundColor = [colors objectAtIndex:j];
    timerLabel.text = [NSString stringWithFormat:@"Time: %ld", (long)seconds];
    scoreLabel.text = [NSString stringWithFormat:@"%li", (long)count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}
//////


- (void)ClasetupGame {
    seconds = 3;
    count = 0;
    
    int j = arc4random() % 7;
    NSArray *colors = [NSArray arrayWithObjects:[UIColor yellowColor],[UIColor redColor],[UIColor greenColor],[UIColor blueColor],[UIColor orangeColor],[UIColor purpleColor], [UIColor magentaColor], [UIColor cyanColor], nil];
    button.backgroundColor = [colors objectAtIndex:j];
    timerLabel.text = [NSString stringWithFormat:@"Time: %ld", (long)seconds];
    scoreLabel.text = [NSString stringWithFormat:@"%li", (long)count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}

//////

- (void)subtractTime {
    
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %ldloat",(long)seconds];
    
 
    if (seconds <= 0) {
        [timer invalidate];
        
        if (seconds <= 0) {
            [timer invalidate];
            
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time's up!"
                                                            message:[NSString stringWithFormat:@"You scored %li points", (long)count]
                                                           delegate:self
                                                  cancelButtonTitle:@"Play Again"
                                                  otherButtonTitles:nil];
            
            [alert show];
        }
    }
}
//////


- (void)ClasubtractTime {
    
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %ld",(long)seconds];
    
    
    if (seconds <= 0) {
        [timer invalidate];
        
        if (seconds <= 0) {
            [timer invalidate];
            
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time's up!"
                                                            message:[NSString stringWithFormat:@"You scored %li points", (long)count]
                                                           delegate:self
                                                  cancelButtonTitle:@"Play Again"
                                                  otherButtonTitles:nil];
            
            [alert show];
        }
    }
}



//////
- (IBAction)button:(UIButton *)sender {
}
@end
