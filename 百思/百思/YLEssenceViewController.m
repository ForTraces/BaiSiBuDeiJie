//
//  YLEssenceViewController.m
//  百思
//
//  Created by administator on 16/3/1.
//  Copyright © 2016年 YNuo. All rights reserved.
//

#import "YLEssenceViewController.h"

@interface YLEssenceViewController ()
/** 标签栏底部的红色指示器 */
@property (nonatomic, weak) UIView *indicatorView;
/** 当前选中的按钮 */
@property (nonatomic, weak) UIButton *selectedButton;
/** 顶部的所有标签 */
@property (nonatomic, weak) UIView *titlesView;
/** 底部的所有内容 */
@property (nonatomic, weak) UIScrollView *contentView;

@end

@implementation YLEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置导航栏
    [self setupNav];
  
}
/**
 * 设置导航栏
 */
- (void)setupNav
{
    // 设置导航栏标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    // 设置导航栏左边的按钮
//    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    
    // 设置背景色
//    self.view.backgroundColor = XMGGlobalBg;
}


@end
