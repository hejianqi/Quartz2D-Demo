//
//  CustomView.m
//  Quartz2D-Demo
//
//  Created by hjq on 16/8/25.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/

- (void)drawRect:(CGRect)rect {
    
/* ------------------------------1、绘制直线---------------------------------- */

//*
    // 取得和当前视图相关联的图形上下文(因为图形上下文决定绘制的输出目标)/
    // 如果是在drawRect方法中调用UIGraphicsGetCurrentContext方法获取出来的就是Layer的上下文
 
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(ctx); // 保存最初上下文
    // 设置起点
    CGContextMoveToPoint(ctx, 20, 100);
    
    // 设置终点
    CGContextAddLineToPoint(ctx, 300, 100);
    
    // 设置线条颜色
    CGContextSetRGBStrokeColor(ctx, 34/255.0, 49/255.0, 63/255.0, 1.0);
    
    // 设置线条宽度
    CGContextSetLineWidth(ctx, 20);
    
    // 设置线条的起点和终点的样式
    CGContextSetLineCap(ctx, kCGLineCapRound);
    
    // 设置线条的转角的样式
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    
    // 渲染
    CGContextStrokePath(ctx);
    
    //还原开始的时候保存的那份最纯洁的图形上下文
    CGContextRestoreGState(ctx);  // 这样就不会受到第一条线的状态影响
    
    // 重新设置第二条线的起点
    CGContextMoveToPoint(ctx, 50, 200);
    
    // 设置第二条线的终点（自动把上一条线的终点当做起点）
    CGContextAddLineToPoint(ctx, 300, 60);
    
//    CGContextSetLineWidth(ctx, 10);
//    
//    // 设置第二条线的颜色
//    CGContextSetRGBStrokeColor(ctx, 255/255.0, 86/255.0, 128/255.0, 1);
//    
    // 渲染
    CGContextStrokePath(ctx);

 //*/

    
/* ------------------------------2、绘制三角形---------------------------------- */
    
/*
    // 获取图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 设置起点
    CGContextMoveToPoint(ctx, 100, 10);
    
    // 设置第二个点
    CGContextAddLineToPoint(ctx, 50, 100);
    
    // 设置第三个点
    CGContextAddLineToPoint(ctx, 200, 150);
    
    // 设置第四个点
    CGContextAddLineToPoint(ctx, 200, 70);
    
    // 设置终点
    CGContextAddLineToPoint(ctx, 100, 10);

    // 关闭起点和终点
//    CGContextClosePath(ctx);
    
    
    // 设置颜色
    CGContextSetRGBStrokeColor(ctx, 255/255.0, 86/255.0, 128/255.0, 1);
    
    // 渲染图形到layer上
    CGContextStrokePath(ctx);
*/

/* ------------------------------3、绘制圆形---------------------------------- */

/*
    // 获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 画圆
    CGContextAddEllipseInRect(ctx, CGRectMake(100, 100, 100, 100));
    
//    CGContextSetLineWidth(ctx, 100);
    [[UIColor greenColor] set];
    
//    CGContextStrokePath(ctx);
 CGContextFillPath(ctx);
 
*/
    
/* ------------------------------4、绘制矩形---------------------------------- */
    
   /*
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 绘制四边形
    CGContextAddRect(ctx, CGRectMake(100, 100, 150, 100));
    
    // 如果要设置绘图的状态必须在渲染之前
//    CGContextSetRGBStrokeColor(ctx, 255/255.0, 86/255.0, 128/255.0, 1);
    // 绘制什么类型的图形 （空心或者实心）就要通过什么类型的方法设置状态
//    CGContextSetRGBFillColor(ctx, 255/255.0, 86/255.0, 128/255.0, 1);
    
    // 调用OC的方法设置绘图的颜色
//    [[UIColor purpleColor] setFill];
//    [[UIColor blueColor] setStroke];
    
    [[UIColor colorWithRed:1.0 green:0 blue:0 alpha:1.0] set];
    
//    CGContextStrokePath(ctx);
    CGContextFillPath(ctx);
    */
    
/* ------------------------------5、绘制圆弧---------------------------------- */
    
/*
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 画圆弧
    // x/y 圆心
    // radius 半径
    // startAngle 开始的弧度
    // endAngle 结束的弧度
    
    CGContextAddArc(ctx, 100, 100, 50, -M_PI_2, M_PI_2, 0);
    
    CGContextClosePath(ctx);
//    CGContextStrokePath(ctx);
    CGContextFillPath(ctx);
*/
 
/* ------------------------------6、绘制饼图---------------------------------- */
    
/*
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(ctx, 100, 100);
    CGContextAddLineToPoint(ctx, 100, 150);
    
    // 画圆弧
    CGContextAddArc(ctx, 100, 100, 50, M_PI_2, M_PI_4, 0);
    
    CGContextClosePath(ctx);
    
    CGContextFillPath(ctx);
    
*/
    
    
    
    
    
    
    
 
}
 

@end
