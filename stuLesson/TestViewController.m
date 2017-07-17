//
//  TestViewController.m
//  stuLesson
//
//  Created by yu on 2017/7/12.
//  Copyright © 2017年 com.yu. All rights reserved.
//

#import "TestViewController.h"
#import "AFNetworking.h"


@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)testOnclick:(id)sender {
    [self netAcrion];
}
-(void)netAcrion{
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    NSDictionary *parameters=@{
                               @"from":@"app",
                               @"cat":@"1",
                               @"curPage":@"1",
                               @"pageSize":@"12",
                               @"user_id":@"12"
                               };
    NSString *url=@"http://candycute.cn/STU_community/advanced/frontend/web/index.php?r=post%2Findex";
    [manager POST:url parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress){
        
    }success:^(NSURLSessionDataTask *_Nonnull task,id _Nullable response){
        NSLog(@"%@",response);
        
    }failure:^(NSURLSessionDataTask *_Nonnull task,NSError * _Nonnull error){
        NSLog(@"%@",error);
        
    }];
    
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
