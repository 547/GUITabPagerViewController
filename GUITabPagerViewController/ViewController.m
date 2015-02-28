//
//  ViewController.m
//  GUITabPagerViewController
//
//  Created by Guilherme Araújo on 27/02/15.
//  Copyright (c) 2015 Guilherme Araújo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <GUITabPagerDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setDataSource:self];
  [self reloadData];
}

- (NSInteger)numberOfViewControllers {
  return 5;
}

- (UIViewController *)viewControllerForIndex:(NSInteger)index {
  UIViewController *vc = [UIViewController new];
  [[vc view] setBackgroundColor:[UIColor colorWithRed:arc4random_uniform(255) / 255.0f
                                                green:arc4random_uniform(255) / 255.0f
                                                 blue:arc4random_uniform(255) / 255.0f alpha:1]];
  return vc;
}

// Implement either viewForTabAtIndex: or titleForTabAtIndex:
//- (UIView *)viewForTabAtIndex:(NSInteger)index {
//  return <#UIView#>;
//}

- (NSString *)titleForTabAtIndex:(NSInteger)index {
  return [NSString stringWithFormat:@"Tab #%ld", (long) index + 1];
}

- (CGFloat)tabHeight {
  // Default: 44.0f
  return 50.0f;
}

- (UIColor *)tabColor {
  // Default: [UIColor orangeColor];
  return [UIColor purpleColor];
}

@end
