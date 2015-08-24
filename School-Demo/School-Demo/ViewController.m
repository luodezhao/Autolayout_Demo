//
//  ViewController.m
//  School-Demo
//
//  Created by 罗德昭 on 15/8/24.
//  Copyright (c) 2015年 罗德昭. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    BOOL isOne;
    BOOL isTwo;
    BOOL isThree;
    BOOL isFour;
}
@property (weak, nonatomic) IBOutlet UIView *alertView;

@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UIView *view4;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor = [UIColor clearColor];
    [self.view1 setHidden:YES];
    [self.view2 setHidden:YES];
    [self.view3 setHidden:YES];
    [self.view4 setHidden:YES];
    self.alertView.layer.masksToBounds = YES;
    [self.btn1 addTarget:self action:@selector(btn1Touch) forControlEvents:UIControlEventTouchUpInside];
    [self.btn2 addTarget:self action:@selector(btn2Touch) forControlEvents:UIControlEventTouchUpInside];
    [self.btn3 addTarget:self action:@selector(btn3Touch) forControlEvents:UIControlEventTouchUpInside];
    [self.btn4 addTarget:self action:@selector(btn4Touch) forControlEvents:UIControlEventTouchUpInside];
    [self animatedIn];
    
}
- (void)animatedIn {
        self.view.transform = CGAffineTransformMakeScale(0.6, 0.6);
        [UIView animateWithDuration:0.2 animations:^{
            self.view.transform = CGAffineTransformMakeScale(1.1, 1.1);
        }
                         completion:^(BOOL finished) {
                             [UIView animateWithDuration:1.0 / 15.0 animations:^{
                                 self.view.transform = CGAffineTransformMakeScale(0.9, 0.9);
                             }
                                              completion:^(BOOL finished) {
                                                  [UIView animateWithDuration:1.0 / 7.5 animations:^{
                                                      self.view.transform = CGAffineTransformIdentity;
                                                  }];
                                              }];
                         }];
    
}
- (void)btn1Touch {

    for (NSLayoutConstraint *constraint in self.view1.superview.constraints) {
        
        if (constraint.firstItem == self.view1 && constraint.firstAttribute == NSLayoutAttributeTop) {
            if (isOne) {
                [UIView animateWithDuration:0.3 animations:^{
                    constraint.constant = constraint.constant - (self.view1.frame.size.height);
                    [self.view layoutIfNeeded];
                    
                } completion:^(BOOL finished) {
                    [self.view1 setHidden:YES];
                    isOne = !isOne;
                }];

            }
            else {
            [UIView animateWithDuration:0.3 animations:^{

                constraint.constant = constraint.constant + (self.view1.frame.size.height);
                [self.view layoutIfNeeded];
                
            } completion:^(BOOL finished) {
                                [self.view1 setHidden:NO];
                isOne = !isOne;
            }];
            }
        }
    }
    
}
- (void)btn2Touch {
    
    for (NSLayoutConstraint *constraint in self.view2.superview.constraints) {
        if (constraint.firstItem == self.view2 && constraint.firstAttribute == NSLayoutAttributeTop) {
            if (isTwo) {
                [UIView animateWithDuration:0.3 animations:^{
                    constraint.constant = constraint.constant - (self.view2.frame.size.height);
                    [self.view layoutIfNeeded];
                    
                } completion:^(BOOL finished) {
                    [self.view2 setHidden:YES];
                    isTwo = !isTwo;
                }];
                
            }
            else {
                [UIView animateWithDuration:0.3 animations:^{
                    constraint.constant = constraint.constant + (self.view2.frame.size.height);
                    [self.view layoutIfNeeded];
                    
                } completion:^(BOOL finished) {
                    [self.view2 setHidden:NO];
                    isTwo = !isTwo;
                }];
            }
        }
    }
    
    
}
- (void)btn3Touch {
    
    for (NSLayoutConstraint *constraint in self.view3.superview.constraints) {
        if (constraint.firstItem == self.view3 && constraint.firstAttribute == NSLayoutAttributeTop) {
            if (isThree) {
                [UIView animateWithDuration:0.3 animations:^{
                    constraint.constant = constraint.constant - (self.view3.frame.size.height);
                    [self.view layoutIfNeeded];
                    
                } completion:^(BOOL finished) {
                    [self.view3 setHidden:YES];
                    isThree = !isThree;
                }];
                
            }
            else {
                [UIView animateWithDuration:0.3 animations:^{
                    constraint.constant = constraint.constant + (self.view3.frame.size.height);
                    [self.view layoutIfNeeded];
                    
                } completion:^(BOOL finished) {
                    [self.view3 setHidden:NO];
                    isThree = !isThree;
                }];
            }
        }
    }
    
    
}
- (void)btn4Touch {
    
    for (NSLayoutConstraint *constraint in self.view4.superview.constraints) {
        if (constraint.firstItem == self.view4 && constraint.firstAttribute == NSLayoutAttributeTop) {
            if (isFour) {
                [UIView animateWithDuration:0.3 animations:^{
                    constraint.constant = constraint.constant - (self.view4.frame.size.height);
                    [self.view layoutIfNeeded];
                    
                } completion:^(BOOL finished) {
                    [self.view4 setHidden:YES];
                    isFour = !isFour;
                  
                }];
                
            }
            else {
                [UIView animateWithDuration:0.3 animations:^{
                    constraint.constant = constraint.constant + (self.view4.frame.size.height);
                    [self.view layoutIfNeeded];
                    
                } completion:^(BOOL finished) {
                    [self.view4 setHidden:NO];
                    isFour = !isFour;
                  
                }];
            }
        }
    }
    
    
}
- (void)animatedOut {
    
        
        [UIView animateWithDuration:1.0 / 7.5 animations:^{
            self.view.transform = CGAffineTransformMakeScale(0.9, 0.9);
        }
                         completion:^(BOOL finished) {
                             [UIView animateWithDuration:1.0 / 15.0 animations:^{
                                 self.view.transform = CGAffineTransformMakeScale(1.1, 1.1);
                             }
                                              completion:^(BOOL finished) {
                                                  [UIView animateWithDuration:0.3 animations:^{
                                                      self.view.transform = CGAffineTransformMakeScale(0.01, 0.01);
                                                      self.view.alpha = 0.3;
                                                  }
                                                                   completion:^(BOOL finished) {
                                                                       [self.view removeFromSuperview];
                                                                   }];
                                              }];
                         }];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self animatedOut];
    
}

@end
