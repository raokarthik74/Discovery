//
//  InitialViewController.m
//  discovery
//
//  Created by Karthik Rao on 1/22/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import "InitialViewController.h"

@interface InitialViewController ()

@property(strong, nonatomic)EventModel *eventModel;

@end

@implementation InitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Service* service = [[Service alloc]init];
    service.serviceDelegete = self;
    [service getAllNearbyEvents];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//initial view controller- segue to next view controller when all the data is obtained
-(void)didGetResponseFromService:(EventModel*)eventModel{
    self.eventModel = eventModel;
    Event* event = [eventModel eventAtIndex:0];
    NSLog(@"Event Title %@", event.eventTitle);
    [self performSegueWithIdentifier:@"tableViewSegue" sender:self];
}

//handle case when there is no 200 response
-(void)noResponse{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Oops!" message:@"I'm sorry, but something went wrong. Please try back in sometime" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction* action){}];
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}

//pass required data to next view controller
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"tableViewSegue"]) {
        TableViewController *controller = (TableViewController *)segue.destinationViewController;
        controller.eventModel = self.eventModel;
    }
}


@end
