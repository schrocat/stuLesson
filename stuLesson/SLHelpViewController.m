//
//  SLHelpViewController.m
//  stuLesson
//
//  Created by 薛汉鎱 on 2017/12/9.
//  Copyright © 2017年 com.yu. All rights reserved.
//

#import "SLHelpViewController.h"

@interface SLHelpViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView *tableView;
@end

@implementation SLHelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)addSubview{
    [self.view addSubview:self.tableView];
}
-(void)setSubViewLayout{
    _tableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomEqualToView(self.view);
}

#pragma mark - setters and getters
-(UITableView*)tableView{
    if (!_tableView) {
        _tableView=[[UITableView alloc]init];
        _tableView.dataSource=self;
        _tableView.delegate=self;
    }
    return _tableView;
}

#pragma mark - tableView datasource
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
@end
