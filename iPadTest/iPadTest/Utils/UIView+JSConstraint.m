//
//  UIView+JSConstraint.m
//  iPadTest
//
//  Created by mac on 16/10/10.
//  Copyright © 2016年 Kugou. All rights reserved.
//

#import "UIView+JSConstraint.h"

@implementation UIView (JSConstraint)

- (void)centerXToView:(UIView *)targetView {
    [targetView addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                           attribute:NSLayoutAttributeCenterX
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:targetView
                                                           attribute:NSLayoutAttributeCenterX
                                                          multiplier:1
                                                            constant:0]];
}

- (void)centerYToView:(UIView *)targetView {
    [targetView addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                           attribute:NSLayoutAttributeCenterY
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:targetView
                                                           attribute:NSLayoutAttributeCenterY
                                                          multiplier:1
                                                            constant:0]];
}

@end
