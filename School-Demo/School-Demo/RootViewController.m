//
//  RootViewController.m
//  School-Demo
//
//  Created by 罗德昭 on 15/8/24.
//  Copyright (c) 2015年 罗德昭. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.center = self.view.center;
    btn.backgroundColor = [UIColor lightGrayColor];
    [btn setTitle:@"点击测试" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget: self action:@selector(go) forControlEvents:UIControlEventTouchUpInside];
}
- (void)go {
    ViewController *myViewController = [[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
        [self.navigationController addChildViewController:myViewController];
    [self.navigationController.view addSubview:myViewController.view];

    
}



@end
