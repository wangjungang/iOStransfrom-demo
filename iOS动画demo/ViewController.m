//
//  ViewController.m
//  iOS动画demo
//
//  Created by 王俊钢 on 2017/9/9.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *demoimg;
@property (nonatomic,assign) BOOL ispingyi;
@property (nonatomic,assign) BOOL isfangda;
@property (nonatomic,assign) BOOL isxuanzhuan;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ispingyi = YES;
    self.isfangda = YES;
    self.isxuanzhuan = YES;
    // Do any additional setup after loading the view, typically from a nib.
    [self.demoimg sd_setImageWithURL:[NSURL URLWithString:@"http://imgsrc.baidu.com/image/c0%3Dshijue1%2C0%2C0%2C294%2C40/sign=3d2175db3cd3d539d530078052ee8325/b7003af33a87e950c1e1a6491a385343fbf2b425.jpg"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pingyiClick:(id)sender {
    self.ispingyi = !self.ispingyi;
    if (self.ispingyi) {
        [UIView animateWithDuration:0.3 animations:^{
            self.demoimg.transform = CGAffineTransformIdentity;
            
        }];
    }
    else
    {
        [UIView animateWithDuration:0.3 animations:^{
            //向下移动
            //self.demoimg.transform = CGAffineTransformMakeTranslation(0, 500);
            //向上移动
            //self.demoimg.transform = CGAffineTransformMakeTranslation(0, -500);
            //向左移动
            //self.demoimg.transform = CGAffineTransformMakeTranslation(-300, 0);
            //向右移动
            self.demoimg.transform = CGAffineTransformMakeTranslation(300, 0);
        }];
    }

}

- (IBAction)fangdaClick:(id)sender {
    self.isfangda = !self.isfangda;
    if (self.isfangda) {
        [UIView animateWithDuration:0.3 animations:^{
            self.demoimg.transform = CGAffineTransformIdentity;
            
        }];
    }
    else
    {
        [UIView animateWithDuration:0.4 animations:^{
            self.demoimg.transform = CGAffineTransformMakeScale(2, 2);
        }];
    }
}

- (IBAction)xuanzeClick:(id)sender {
    
    self.demoimg.layer.anchorPoint = CGPointMake(0.5, 0.5);
    [UIView animateWithDuration:0.4 animations:^{
         self.demoimg.transform = CGAffineTransformMakeRotation(90);
    }];
}


@end
