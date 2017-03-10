//
//  WSMovieController.h
//  StartMovie
//
//  Created by iMac on 16/8/29.
//  Copyright © 2016年 sinfotek. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WSMovieControllerDelegate <NSObject>

-(void)goaaaa;

@end

@interface WSMovieController : UIViewController

@property (nonatomic,weak) id<WSMovieControllerDelegate>delegate;

@property(nonatomic,strong)NSURL *movieURL;

@end
