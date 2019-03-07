//
//  ViewController.m
//  发光按钮
//
//  Created by Snake on 2019/3/7.
//  Copyright © 2019年 Snake. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton* button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    //
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:button];
    button.frame = CGRectMake(100, 100, 50, 50);
    [button setTitle:@"click" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)buttonClick:(UIButton *)btn {
//    btn.showsTouchWhenHighlighted = YES;
    [btn setShowsTouchWhenHighlighted:YES];
}

@end
