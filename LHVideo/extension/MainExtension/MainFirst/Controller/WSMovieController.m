//
//  WSMovieController.m
//  StartMovie
//
//  Created by iMac on 16/8/29.
//  Copyright © 2016年 sinfotek. All rights reserved.
//

#import "WSMovieController.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVKit/AVKit.h>
#import "ViewController.h"
#import "AppDelegate.h"


@interface WSMovieController ()
@property (strong, nonatomic) MPMoviePlayerController *player;

@end

@implementation WSMovieController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self SetupVideoPlayer];
}


- (void)SetupVideoPlayer
{
    self.player = [[MPMoviePlayerController alloc] initWithContentURL:_movieURL];
    [self.view addSubview:self.player.view];
    self.player.shouldAutoplay = YES;
    [self.player setControlStyle:MPMovieControlStyleNone];
    self.player.repeatMode = MPMovieRepeatModeOne;
    [self.player.view setFrame:self.view.bounds];
    self.player.view.alpha = 0;
    [UIView animateWithDuration:0.1f animations:^{
        self.player.view.alpha = 1;
        [self.player prepareToPlay];
    }];
    
    [self setupLoginView];
}

- (void)setupLoginView
{
    //进入按钮
    UIButton *enterMainButton = [[UIButton alloc] init];
    enterMainButton.frame = CGRectMake(24, [UIScreen mainScreen].bounds.size.height - 32 - 48, [UIScreen mainScreen].bounds.size.width - 48, 48);
    enterMainButton.layer.borderWidth = 1;
    enterMainButton.layer.cornerRadius = 24;
    enterMainButton.layer.borderColor = [UIColor whiteColor].CGColor;
    [enterMainButton setTitle:@"进入应用" forState:UIControlStateNormal];
    enterMainButton.alpha = 0;
    [self.player.view addSubview:enterMainButton];
    [enterMainButton addTarget:self action:@selector(enterMainAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [UIView animateWithDuration:0.1f animations:^{
        enterMainButton.alpha = 1.0;
    }];
}

- (void)enterMainAction:(UIButton *)btn {
    NSLog(@"进入应用");
	if (self.delegate && [self.delegate respondsToSelector:@selector(goaaaa)]) {
		[self.delegate goaaaa];
	}
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end