//
//  KGPopMiddleViewController.m
//  iPadTest
//
//  Created by JeremySu on 16/10/10.
//  Copyright © 2016年 Kugou. All rights reserved.
//

#import "KGPopMiddleViewController.h"

@interface KGPopMiddleViewController()

@property (nonatomic, strong) UIView *line;

@end

@implementation KGPopMiddleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    self.title = @"yellow";
    
    self.line = [[UIView alloc] initWithFrame:CGRectZero];
    self.line.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.line];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.line.frame = CGRectMake(3,
                                 self.view.frame.size.height-10-64,
                                 self.view.frame.size.width-3*2,
                                 5);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan!!!");
    UIViewController *vc = [[UIViewController alloc] init];
    vc.title = @"vc";
    vc.view.backgroundColor = [UIColor blueColor];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
