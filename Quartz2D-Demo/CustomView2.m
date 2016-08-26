//
//  CustomView2.m
//  Quartz2D-Demo
//
//  Created by hjq on 16/8/26.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "CustomView2.h"

@implementation CustomView2

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/


- (void)setRadius:(float)radius {
    _radius = radius;
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    // 获取图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    if (self.radius == 0) {
        self.radius = 50;
    }
    
    // 在自定义的view中画一个圆
    CGContextAddArc(ctx, self.frame.size.width/2, self.frame.size.height/2, self.radius, 0, 2*M_PI, 1);

    // 设置圆的填充颜色
    [[UIColor orangeColor] set];
    
    // 渲染
    CGContextFillPath(ctx);
}

@end
