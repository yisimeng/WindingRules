//
//  ViewController.m
//  WindingRules
//
//  Created by duanzengguang on 2018/12/13.
//  Copyright © 2018年 duanzengguang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
    // 1. 默认的非零缠绕：外边框和内边框同一方向
     
    CGRect aRect = CGRectMake(100, 100, 200, 200);
    UIBezierPath * aPath = [UIBezierPath bezierPathWithRect:aRect];
    CGRect bRect = CGRectInset(aRect, 50, 50);
    UIBezierPath * bPath = [UIBezierPath bezierPathWithRect:bRect];
    
    [aPath appendPath:bPath];
    
    CAShapeLayer * shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = aPath.CGPath;
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor cyanColor].CGColor;
    [self.view.layer addSublayer:shapeLayer];
     */
    
    /*
     // 2. 非零缠绕：内边框与外边框反向
     
     CGRect aRect = CGRectMake(100, 100, 200, 200);
     UIBezierPath * aPath = [UIBezierPath bezierPathWithRect:aRect];
     CGRect bRect = CGRectInset(aRect, 50, 50);
     UIBezierPath * bPath = [[UIBezierPath bezierPathWithRect:bRect] bezierPathByReversingPath];
     
     [aPath appendPath:bPath];
     
     CAShapeLayer * shapeLayer = [CAShapeLayer layer];
     shapeLayer.path = aPath.CGPath;
     shapeLayer.strokeColor = [UIColor redColor].CGColor;
     shapeLayer.fillColor = [UIColor cyanColor].CGColor;
     [self.view.layer addSublayer:shapeLayer];
     */
    
    /*
     // 3. 奇偶缠绕规则
     
     CGRect aRect = CGRectMake(100, 100, 200, 200);
     UIBezierPath * aPath = [UIBezierPath bezierPathWithRect:aRect];
     CGRect bRect = CGRectInset(aRect, 50, 50);
     UIBezierPath * bPath = [UIBezierPath bezierPathWithRect:bRect];
     
     [aPath appendPath:bPath];
     
     CAShapeLayer * shapeLayer = [CAShapeLayer layer];
     shapeLayer.path = aPath.CGPath;
     shapeLayer.fillRule = kCAFillRuleEvenOdd;
     shapeLayer.strokeColor = [UIColor redColor].CGColor;
     shapeLayer.fillColor = [UIColor cyanColor].CGColor;
     [self.view.layer addSublayer:shapeLayer];
     */
    
    /*
     // 4. 开放式路径，非零缠绕规则
     
     UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(150, 150) radius:150 startAngle:M_PI endAngle:0 clockwise:NO];
     [path addLineToPoint:CGPointMake(300, 0)];
     [path addLineToPoint:CGPointMake(30, 300)];
     [path addLineToPoint:CGPointMake(30, 150)];
     [path addLineToPoint:CGPointMake(150, 225)];
     [path addLineToPoint:CGPointMake(350, 150)];
     
     CAShapeLayer * shapeLayer = [CAShapeLayer layer];
     shapeLayer.path = path.CGPath;
     shapeLayer.strokeColor = [UIColor redColor].CGColor;
     shapeLayer.fillColor = [UIColor cyanColor].CGColor;
     [self.view.layer addSublayer:shapeLayer];
     */
    
    
     // 5. 开放式路径，奇偶缠绕规则
     UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(150, 150) radius:150 startAngle:M_PI endAngle:0 clockwise:NO];
     [path addLineToPoint:CGPointMake(300, 0)];
     [path addLineToPoint:CGPointMake(30, 300)];
     [path addLineToPoint:CGPointMake(30, 150)];
     [path addLineToPoint:CGPointMake(150, 225)];
     [path addLineToPoint:CGPointMake(350, 150)];
     
     CAShapeLayer * shapeLayer = [CAShapeLayer layer];
     shapeLayer.path = path.CGPath;
     shapeLayer.strokeColor = [UIColor redColor].CGColor;
     shapeLayer.fillColor = [UIColor cyanColor].CGColor;
     shapeLayer.fillRule = kCAFillRuleEvenOdd;
     [self.view.layer addSublayer:shapeLayer];
    
    
}


@end
