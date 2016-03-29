//
//  YLTabBarController.m
//  百思
//
//  Created by administator on 16/3/1.
//  Copyright © 2016年 YNuo. All rights reserved.
//

#import "YLTabBarController.h"
#import "YLEssenceViewController.h"
#import "YLTabBar.h"

@interface YLTabBarController ()

@end

@implementation YLTabBarController

+(void)initialize
{
    NSMutableDictionary *attrs=[NSMutableDictionary dictionary];
    attrs[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName]=[UIColor grayColor];
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    UITabBarItem *item=[UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    

}
- (void)viewDidLoad {
    
    
    [super viewDidLoad];
    // 添加子控制器
    [self setupChildVC:[[YLEssenceViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setupChildVC:[[UIViewController alloc]init] title:@"精华" image:@"" selectedImage:@""];

    [self setupChildVC:[[YLEssenceViewController alloc]init] title:@"精华" image:@"" selectedImage:@""];

    [self setupChildVC:[[YLEssenceViewController alloc]init] title:@"精华" image:@"" selectedImage:@""];

    // 更换tabBar
    [self setValue:[[YLTabBar alloc] init] forKeyPath:@"tabBar"];
}
/**
 *  初始化自控制器
 */
-(void)setupChildVC:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    vc.title=title;
    vc.tabBarItem.image=[UIImage imageNamed:image];
    vc.tabBarItem.selectedImage=[UIImage imageNamed:selectedImage];
    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:vc];
    [self addChildViewController:nav];
}



@end
