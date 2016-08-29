//
//  MyLayer.m
//  Quartz2D-Demo
//
//  Created by hjq on 16/8/29.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "MyLayer.h"

@implementation MyLayer

// 重写该方法，在该方法内绘制图形
- (void)drawInContext:(CGContextRef)ctx {
    
    // 1.绘制圆形
    // 画一个圆
    CGContextAddEllipseInRect(ctx, CGRectMake(50, 50, 100, 100));
    
    // 设置属性（颜色）
    CGContextSetRGBFillColor(ctx, 0, 0, 1, 1);
    
    // 2.渲染
//    CGContextStrokePath(ctx);
    CGContextFillPath(ctx);
}

@end
