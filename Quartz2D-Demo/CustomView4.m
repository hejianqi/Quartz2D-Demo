//
//  CustomView4.m
//  Quartz2D-Demo
//
//  Created by hjq on 16/8/26.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "CustomView4.h"

@implementation CustomView4

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/

- (void)drawRect:(CGRect)rect {
    // Drawing code

    /*----------------------------1、旋转---------------------------------------*/
    
    /*
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 设置矩阵操作必须要在添加绘图信息之前
    // 旋转45度
    CGContextRotateCTM(ctx, M_PI_4);
    
    // 绘制四边形
    CGContextAddRect(ctx, CGRectMake(150, 100, 150, 100));
    
    // 画一个圆
    CGContextAddEllipseInRect(ctx, CGRectMake(250, 200, 75, 75));
    
    // 渲染
    CGContextStrokePath(ctx);
    
     */
    
    /*----------------------------2、缩放---------------------------------------*/
    
    /*
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 缩放， x方向缩放0.5倍，y方向缩放1.5倍
    CGContextScaleCTM(ctx, 0.5, 1.5);
    
    // 绘制四边形
    CGContextAddRect(ctx, CGRectMake(150, 100, 150, 100));
    
    // 画一个圆
    CGContextAddEllipseInRect(ctx, CGRectMake(250, 200, 75, 75));
    
    // 渲染
    CGContextStrokePath(ctx);
    
    */

    
    /*----------------------------3、平移---------------------------------------*/
    
    //*
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 平移， x方向移动50 ， y方向移动100
    CGContextTranslateCTM(ctx, 50, 200);
    
    // 绘制四边形
    CGContextAddRect(ctx, CGRectMake(150, 100, 150, 100));
    
    // 画一个圆
    CGContextAddEllipseInRect(ctx, CGRectMake(250, 200, 75, 75));
    
    // 渲染
    CGContextStrokePath(ctx);
    
    
    //*/
}

@end
