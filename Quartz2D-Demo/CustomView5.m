//
//  CustomView5.m
//  Quartz2D-Demo
//
//  Created by hjq on 16/8/26.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "CustomView5.h"

@implementation CustomView5

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/

- (void)drawRect:(CGRect)rect {
    // Drawing code
    

/*
    // 画圆 以便以后指定可以显示图片的范围
    
    // 获取图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ctx, CGRectMake(100, 100, 50, 50));

     //剪切自定义区域意外的部分
    // 指定上下文中可以显示内容的范围就是圆的范围
    CGContextClip(ctx);
    UIImage *image = [UIImage imageNamed:@"礼物盒3"];
    [image drawAtPoint:CGPointMake(50, 50)];
 
*/
    
/*
    // 获取图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ctx, 100, 100);
    CGContextAddLineToPoint(ctx, 60, 150);
    CGContextAddLineToPoint(ctx, 140, 150);
    CGContextClosePath(ctx);
    
    // 指定上下文中可以显示内容的范围就是三角形的范围
    CGContextClip(ctx);
    UIImage *image = [UIImage imageNamed:@"礼物盒3"];
    [image drawAtPoint:CGPointMake(50, 50)];
    
 */
    
    
    
    // 获取图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    CGContextClipToRect(ctx, CGRectMake(80, 100, 50, 50));
    
    UIImage *image = [UIImage imageNamed:@"礼物盒3"];
    [image drawAtPoint:CGPointMake(50, 50)];
    
    
    
    
    
}

@end
