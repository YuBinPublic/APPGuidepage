//
//  ViewController.m
//  LHVideo
//
//  Created by 余斌 on 17/01/04.
//  Copyright © 2017年 余斌. All rights reserved.
//

#import "ViewController.h"
#import "LHWEBViewController.h"
#import "LHUtility.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	UIButton * but0 = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
	[self.view addSubview:but0];
	[but0 addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
	[but0 setBackgroundColor:[UIColor orangeColor]];
	
}

-(void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
//	[self.navigationController setNavigationBarHidden:YES animated:YES];
	
}

-(void)clickButton:(UIButton*)but {
	LHWEBViewController * asdfasd = [[LHWEBViewController alloc] init];
	[[LHUtility selfMainControllerWithView:but].navigationController pushViewController:asdfasd animated:YES];
}



- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
