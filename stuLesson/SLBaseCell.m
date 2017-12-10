//
//  SLBaseCell.m
//  stuLesson
//
//  Created by 薛汉鎱 on 2017/12/10.
//  Copyright © 2017年 com.yu. All rights reserved.
//

#import "SLBaseCell.h"

@implementation SLBaseCell

+(instancetype)cellWithTableView:(UITableView *)tableView withReuseIdentifier :(NSString *)reuseIdentifier{
    SLBaseCell *cell =[tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (!cell) {
        cell=[[[self class]alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    }
    return cell;
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addCellSubview];
        [self setCellLayout];
    }
    return self;
}
-(void)addCellSubview{
    
}
-(void)setCellLayout{
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
