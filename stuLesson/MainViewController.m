//
//  MainViewController.m
//  stuLesson
//
//  Created by 薛汉鎱 on 2017/12/10.
//  Copyright © 2017年 com.yu. All rights reserved.
//

#import "MainViewController.h"
#import "SLHelpViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSubController];
    // Do any additional setup after loading the view.
}
-(void)addSubController{
    SLHelpViewController *slhVC=[[SLHelpViewController alloc]init];
    UINavigationController *slhNC=[[UINavigationController alloc]initWithRootViewController:slhVC];
    UITabBarItem *slhTB=[[UITabBarItem alloc]initWithTitle:@"help" image:[UIImage imageNamed:@""] tag:0];
    slhNC.tabBarItem=slhTB;
    NSArray *controllerArray=@[slhNC];
    [self setViewControllers:controllerArray];
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
