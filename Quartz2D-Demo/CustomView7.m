//
//  CustomView7.m
//  Quartz2D-Demo
//
//  Created by hjq on 16/8/29.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "CustomView7.h"

@implementation CustomView7

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    // 1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // 2.绘制图形
    CGContextAddEllipseInRect(ctx, CGRectMake(0, 100, 100, 100));
    // 设置属性（颜色）
//    [[UIColor yellowColor] set];
    CGContextSetRGBFillColor(ctx, 0, 0, 1, 1);
    // 2.渲染
    CGContextFillPath(ctx);
    //在执行渲染操作的时候，本质上它的内部相当于调用了下面的方法
//    [self.layer drawInContext:ctx];
    
    UIBezierPath *p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 100, 100, 100)];
    [[UIColor blackColor] setFill];
    
    [p fill];
}

@end
