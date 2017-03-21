//
//  ViewController.m
//  testPro
//
//  Created by 赵晋 on 2017/3/4.
//  Copyright © 2017年 赵晋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,copy)NSString *nameStr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"firstVC");
    

    self.nameStr = @"123";
    
    
    [self showName:self.nameStr];
    [self addBtn];
    
}


//断言  如果条件适合程序继续走，不适合跳出
- (void)showName:(NSString *)name
{
    NSAssert(name != nil, @"name空");

    NSLog(@"my name is %@",name);
}

- (void)addBtn
{
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(20, 100, 20, 200);
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
