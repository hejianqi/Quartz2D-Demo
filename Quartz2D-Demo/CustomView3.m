//
//  CustomView3.m
//  Quartz2D-Demo
//
//  Created by hjq on 16/8/26.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "CustomView3.h"

@implementation CustomView3

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/

- (void)drawRect:(CGRect)rect {
    // Drawing code

    /*--------------------------------1、画文字-------------------------------*/
    
/*

    // 绘制矩形
    NSString *text = @"法师法师；分离开家发送的开发商的李开复就是大离开；发收到了发来撒点开放加水淀粉加速度快历史课 ";
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextAddRect(ctx, CGRectMake(50, 50, 100, 100));
    
    CGContextStrokePath(ctx);
    
    
    NSMutableDictionary *md = [NSMutableDictionary dictionary];
    // 设置文字颜色
    md[NSForegroundColorAttributeName] = [UIColor redColor];
    // 设置文字的背景颜色
//    md[NSBackgroundColorAttributeName] = [UIColor greenColor];
    // 设置文字大小
    md[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    
//    // 将文字绘制到指定的位置
//    [text drawAtPoint:CGPointMake(10, 10) withAttributes:md];
    
    // 将文字绘制到指定的范围内，如果一行装不下会自动换行，当文字超出范围后就不显示
    [text drawInRect:CGRectMake(50, 50, 100, 100) withAttributes:md];
    
    
//*/

    /*--------------------------------2、画图片-------------------------------*/
    
//*
    // 加载图片到内存中
    UIImage *image = [UIImage imageNamed:@"动态1 copy"];
    
    // 利用OC 方法将图片绘制到layer 上
    // 利用drawInRect 方法绘制图片到layer ， 是通过拉伸原有图片
//    [image drawInRect:CGRectMake(0, 0, 200, 200)];
    
    // 将图片绘制到指定的位置
    [image drawAtPoint:CGPointMake(100, 100)];
    
    // 利用drawAsPatternInRec 方法绘制图片到 layer ，是通过平铺原有图片
//    [image drawAsPatternInRect:CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
  
//*/
 

}
 


@end
