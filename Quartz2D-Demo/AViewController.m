//
//  AViewController.m
//  Quartz2D-Demo
//
//  Created by hjq on 16/8/29.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "AViewController.h"
#import "MyLayer.h" // 自定义layer
#import "CViewController.h"

@interface AViewController ()

@property (nonatomic, strong) CALayer *layer;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"AViewC";
    self.view.backgroundColor = [UIColor whiteColor];
    
    /*-----------------------创建一个简单的图层---------------------------
    // 1.创建一个layer
    // 使用对象方法创建
//    CALayer *layer = [[CALayer alloc] init];
    // 使用类方法创建
    CALayer *layer = [CALayer layer];
    
    // 2.设置layer的属性（一定要设置位置，颜色属性才能显示出来）
    layer.backgroundColor = [UIColor yellowColor].CGColor;
    layer.bounds = CGRectMake(0, 0, 200, 200);
    layer.position = CGPointMake(100, 100);
    
    // 3.把layer添加到界面上
    [self.view.layer addSublayer:layer];
    
    */
    
    
    /*------------------------添加一个显示图片的图层----------------------
    
    // 创建一个layer
    CALayer *myLayer = [CALayer layer];
    
    // 设置layer的属性
    myLayer.bounds = CGRectMake(100, 100, 200, 200);
    myLayer.position = CGPointMake(150, 250);

    // 设置需要显示的图片
    myLayer.contents = (id)[UIImage imageNamed:@"礼物盒3@2x"].CGImage;
    // 设置圆角半径为10
    myLayer.cornerRadius = 100;
    // 如果设置了图片，那么需要设置这个属性为YES才能显示圆角效果
    myLayer.masksToBounds = YES;
    // 设置边框
    myLayer.borderWidth = 3;
    myLayer.borderColor = [UIColor brownColor].CGColor;
    
    // 把layer 添加到界面上
    [self.view.layer addSublayer:myLayer];
    
     */
    
    /*--------------------------隐式动画-----------------------
    
    // 创建图层
    CALayer *layer = [CALayer layer];
    
    // 设置图层属性
    layer.backgroundColor =[UIColor brownColor].CGColor;
    layer.bounds = CGRectMake(0, 0, 150, 100);
    
    // 显示位置
    layer.position = CGPointMake(100, 100);
    layer.anchorPoint = CGPointZero;
    layer.cornerRadius = 20;
    [self.view.layer  addSublayer:layer];
    
    self.layer = layer;
     */
    
    /*--------------------------------
     
    // 1.创建自定义的layer
    MyLayer *myLayer = [[MyLayer alloc] init];
    
    // 2.设置layer的属性
    myLayer.backgroundColor = [UIColor brownColor].CGColor;
    myLayer.bounds = CGRectMake(0, 0, 200, 200);
    myLayer.anchorPoint = CGPointZero;
    layer.position = CGPointMake(200, 300);
    myLayer.cornerRadius = 20;
    myLayer.shadowColor = [UIColor blackColor].CGColor;
    myLayer.shadowOffset = CGSizeMake(10, 20);
    myLayer.shadowOpacity = 0.6;
    
    [myLayer setNeedsDisplay];
    
    [self.view.layer addSublayer:myLayer];
    
     */
    
    
    //*-----------------------------------
    
    // 1.创建自定义的layer
    CALayer *layer = [CALayer layer];
    // 2.设置layer的属性
    layer.backgroundColor = [UIColor brownColor].CGColor;
    layer.bounds = CGRectMake(0, 0, 200, 200);
    layer.anchorPoint = CGPointZero;
    layer.position = CGPointMake( 100, 100);
    layer.cornerRadius = 20;
    layer.shadowColor = [UIColor blackColor].CGColor;
    layer.shadowOffset = CGSizeMake(20, 30);
    layer.shadowOpacity = 0.6;
    
    // 设置代理
    layer.delegate = self;
    [layer setNeedsDisplay];
    
    // 3.添加layer
    [self.view.layer addSublayer:layer];
    
    
     //*/
}

// 代理方法
- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    
    /*
    
    UIGraphicsPushContext(ctx);
    // 1.绘制图形
    // 画一个圆
    CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 200, 200));
    // 设置属性（颜色）
    CGContextSetRGBFillColor(ctx, 0, 0, 1, 1);
    
    // 2.渲染
    CGContextFillPath(ctx);
    
    UIGraphicsPopContext();
     */
    
    UIGraphicsPushContext(ctx);
    
    UIBezierPath *p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 100, 100, 100)];
    [[UIColor blackColor] setFill];
    
    [p fill];
    
    UIGraphicsPopContext();
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // 隐式动画
//    self.layer.bounds = CGRectMake(0, 0, 200, 60);
//    self.layer.backgroundColor = [UIColor yellowColor].CGColor;
    
    // 关闭隐式动画
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
    self.layer.bounds = CGRectMake(0, 0, 200, 60);
    self.layer.backgroundColor = [UIColor yellowColor].CGColor;
    [CATransaction commit];
    
//    [self dismissViewControllerAnimated:YES completion:nil];
    CViewController *vc = [[CViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
