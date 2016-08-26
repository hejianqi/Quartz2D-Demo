//
//  ViewController.m
//  Quartz2D-Demo
//
//  Created by hjq on 16/8/25.
//  Copyright © 2016年 UTOUU. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "CustomView2.h"
#import "CustomView3.h"
#import "CustomView4.h"
#import "CustomView5.h"

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
//    view4.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1];
//    view4.frame = self.view.frame;
//    [self.view addSubview:view4];

    CustomView5 *view5 = [[CustomView5 alloc] init];
    view5.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1];
    view5.frame = self.view.frame;
    [self.view addSubview:view5];
}

- (void)valueChange:(UISlider *)sender {
    
    view2.radius = sender.value * 200;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
