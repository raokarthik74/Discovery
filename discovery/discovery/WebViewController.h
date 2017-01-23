//
//  WebViewController.h
//  discovery
//
//  Created by Karthik Rao on 1/20/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate>

- (IBAction)backButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UINavigationItem *navTitle;
@property (strong, nonatomic) NSString* url;
@property NSString* titlestr;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;


@end
