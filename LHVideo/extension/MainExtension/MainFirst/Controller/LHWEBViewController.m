//
//  LHWEBViewController.m
//  LHVideo
//
//  Created by 余斌 on 17/01/04.
//  Copyright © 2017年 余斌. All rights reserved.
//

#import "LHWEBViewController.h"

@interface LHWEBViewController ()
<
	UIWebViewDelegate

>
@property (nonatomic,strong)UIWebView * LH_webView;

@end

@implementation LHWEBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	[self asdfasdf];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)asdfasdf {
	
	
	UIButton *backButton = [[UIButton alloc]initWithFrame:CGRectMake(0.f, 0.f, 60.f, 44.f)];
	[backButton setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
	[backButton setTitle:@"返回" forState:UIControlStateNormal];
	[backButton setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
	[backButton addTarget:self action:@selector(clickToBack) forControlEvents:UIControlEventTouchUpInside];
	UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
	UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]
									   initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
									   target:nil action:nil];
	negativeSpacer.width = -16;
	self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:negativeSpacer,backItem,nil];
	
	
	
	
	_LH_webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
	_LH_webView.delegate = self;
	[self.view addSubview:_LH_webView];
	
	
	NSURLRequest * reqiasd = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.baidu.com"]];
	[_LH_webView loadRequest:reqiasd];
	
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
	return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
}


-(void)clickToBack {
	if ([_LH_webView canGoBack]) {
		[_LH_webView goBack];
	} else {
		[self.navigationController popViewControllerAnimated:YES];
	}
}

@end
