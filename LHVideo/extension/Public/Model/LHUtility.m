//
//  LHUtility.m
//  LHVideo
//
//  Created by 余斌 on 17/01/04.
//  Copyright © 2017年 余斌. All rights reserved.
//

#import "LHUtility.h"

static id _next;
NSInteger foundTimes;

@implementation LHUtility {
	NSInteger foundTimes;
}

+(UIViewController *)selfMainControllerWithView:(UIView *)curView {
	_next = [curView nextResponder];
	foundTimes = 1;
	return [self getFatherController];
}

+(UIViewController *)getFatherController {
	foundTimes ++;
	if (![_next isKindOfClass:[UIViewController class]]) {
		if (foundTimes < 100) {
			_next = [_next nextResponder];
			[self getFatherController];
		} else {
			_next = nil;
		}
	}
	return (UIViewController *)_next;
}

@end
