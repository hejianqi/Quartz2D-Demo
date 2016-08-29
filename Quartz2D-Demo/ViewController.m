//
//  ViewController.m
//  Quartz2D-Demo
//
//  Created by hjq on 16/8/25.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
#import "CustomView.h"
#import "CustomView2.h"
#import "CustomView3.h"
#import "CustomView4.h"
#import "CustomView5.h"
#import "CustomView7.h"

@interface ViewController () {
    
    CustomView2 *view2;
    UISlider *slider;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    CustomView *view1 = [[CustomView alloc] init];
//    view1.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1];
//    view1.frame = self.view.frame;
//    [self.view addSubview:view1];
    
//    view2 = [[CustomView2 alloc] init];
//    view2.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1];
//    view2.frame =  self.view.frame;
//    [self.view addSubview:view2];
//    
//    slider = [[UISlider alloc] initWithFrame:CGRectMake(10, CGRectGetHeight(self.view.frame) - 40, CGRectGetWidth(self.view.frame) - 20, 20)];
//    [self.view addSubview:slider];
//    [slider addTarget:self action:@selector(valueChange:) forControlEvents:UIControlEventValueChanged];
    
//    CustomView3 *view3 = [[CustomView3 alloc] init];
//    view3.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1];
//    view3.frame = self.view.frame;
//    [self.view addSubview:view3];
    
//    CustomView4 *view4 = [[CustomView4 alloc] init];
//    view4.backgroundColor = [UIColor orangeColor];
//    view4.frame = self.view.frame;
//    [self.view addSubview:view4];

//    CustomView5 *view5 = [[CustomView5 alloc] init];
//    view5.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1];
//    view5.frame = self.view.frame;
//    [self.view addSubview:view5];
    
/*--------------------------信纸条纹-----------------------------
 
//    UIImage *image = [UIImage imageNamed:@"动态1 copy@2x"];
//    UIColor *color = [UIColor colorWithPatternImage:image];
//    self.view.backgroundColor = color;
    
    // 1.生成一张以后用于平铺的小图片
    CGSize size = CGSizeMake(self.view.frame.size.width, 35);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    
    // 2.画矩形
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGFloat height = 35;
    CGContextAddRect(ctx, CGRectMake(0, 0, self.view.frame.size.width, height));
    [[UIColor whiteColor] set];
    CGContextFillPath(ctx);
    
    // 3.画线条
    CGFloat lineWidth = 0.5;
    CGFloat lineY = height = lineWidth;
    CGFloat lineX = 0;
    
    CGContextMoveToPoint(ctx, lineX, lineY);
    CGContextAddLineToPoint(ctx, self.view.frame.size.width, lineY);
    
    [[UIColor blueColor] set];
    CGContextStrokePath(ctx);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIColor *color = [UIColor colorWithPatternImage:image];
    self.view.backgroundColor = color;

 
 */
    
    /*-------------------------截屏------------------------
     
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"截屏" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 30, 50, 30);
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    */

    
    CustomView7 *view7 = [[CustomView7 alloc] init];
    view7.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1];
    view7.frame = self.view.frame;
    [self.view addSubview:view7];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    AViewController *vc = [[AViewController alloc] init];
//    vc.view.backgroundColor = [UIColor whiteColor];
//    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
//    [self presentViewController:nav animated:YES completion:nil];
    
    [self.navigationController pushViewController:vc animated:YES];
}

// 截屏功能
- (void)buttonClick {
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        // 获取图形上下文
        UIGraphicsBeginImageContextWithOptions(self.view.frame.size, YES,  0);
        
        // 将View绘制到图形上下文中
        [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
        
        // 将截屏保存到相册
        UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
        UIImageWriteToSavedPhotosAlbum(newImage, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
        
    });
}



- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    
    if (error) {
        NSLog(@"保存失败，请检查是否拥有相关的权限");
    }else {
        NSLog(@"保存成功");
    }
}

- (void)valueChange:(UISlider *)sender {
    
    view2.radius = sender.value * 200;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
