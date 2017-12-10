//
//  SLBaseCell.h
//  stuLesson
//
//  Created by 薛汉鎱 on 2017/12/10.
//  Copyright © 2017年 com.yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLBaseCell : UITableViewCell
+(instancetype)cellWithTableView:(UITableView*)tableView withReuseIdentifier:(NSString*)reuseIdentifier;
-(void)addCellSubview;
-(void)setCellLayout;
@end
