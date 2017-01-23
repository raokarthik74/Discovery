//
//  WebViewController.m
//  discovery
//
//  Created by Karthik Rao on 1/20/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView.delegate = self;
    self.navTitle.title = self.titlestr;
    NSLog(@"main url %@", self.url);
    NSURL *url = [NSURL URLWithString:self.url];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//when web view loads, stop the indicator
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.indicator setHidden:YES];
    [self.indicator stopAnimating];
}

//when back button is pressed, dismiss the view controller to return back to the table view controller
- (IBAction)backButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
