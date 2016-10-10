//
//  ViewController.m
//  iPadTest
//
//  Created by mac on 16/9/26.
//  Copyright © 2016年 Kugou. All rights reserved.
//

#import "ViewController.h"

#import "KGPopMiddleViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitle:@"button" forState:UIControlStateNormal];
    btn.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:btn];
    
    NSDictionary *dict = NSDictionaryOfVariableBindings(btn);
    
    /*
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[btn]-20-|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:dict]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[btn]-200-|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:dict]];
     */
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[btn(120)]"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:dict]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[btn(44)]"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:dict]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btn
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1
                                                           constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btn
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1
                                                           constant:0]];
    
    /*
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 500, 500)];
    contentView.center = self.view.center;
    contentView.backgroundColor = [UIColor redColor];
    contentView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    [self.view addSubview:contentView];
    
    KGPopMiddleViewController *contentVC = [[KGPopMiddleViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:contentVC];
    nav.view.frame = contentView.bounds;
    [contentView addSubview:nav.view];
    [self addChildViewController:nav];
     */
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
