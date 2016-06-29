//
//  ViewController.m
//  Animation
//
//  Created by Carson Capper on 6/28/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
   
    self.notificationView = [[NotificationView alloc] initWithFrame:CGRectMake(0, -self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    
    self.notificationView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:self.notificationView];
    
    
    UISwipeGestureRecognizer *swipeDownGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown:)];
    
    swipeDownGestureRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer: swipeDownGestureRecognizer];
    
    
    UISwipeGestureRecognizer *swipeUpGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp:)];
    
    swipeUpGestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    
    [self.view addGestureRecognizer: swipeUpGestureRecognizer];
    

 
    
    //[UIView animateWithDuration: .5 animations:^{
     //   notificationView.center = self.view.center;}];
}
-(void) swipeDown:(UIGestureRecognizer *)recognizer {
    NSLog(@"swipeDown");
   
    [UIView animateWithDuration: .5 animations:^{
    self.notificationView.center = self.view.center;
    }];
}
-(void) swipeUp:(UIGestureRecognizer *)recognizer {
    NSLog(@"SwipeUp");
    
    [UIView animateWithDuration: .5 animations:^{
        self.notificationView.frame = CGRectMake(0, -self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
