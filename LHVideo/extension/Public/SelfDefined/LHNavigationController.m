//
//  LHNavigationController.m
//  extension
//
//  Created by 余斌 on 17/01/04.
//  Copyright © 2017年 余斌. All rights reserved.
//

#import "LHNavigationController.h"
#import "AppDelegate.h"

@interface LHNavigationController ()
<UIGestureRecognizerDelegate>
@end

@implementation LHNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)add {
	
	id target = self.interactivePopGestureRecognizer.delegate;
	UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];//handleNavigationTransition为系统手势
	pan.delegate = self;
	[self.view addGestureRecognizer:pan];
	self.interactivePopGestureRecognizer.enabled = NO;

}

- (void)handleNavigationTransition : (UIGestureRecognizer *)sender{

}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
	if (self.viewControllers.count != 1)
		return YES;
	return NO;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
	return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc {
	
}

@end
