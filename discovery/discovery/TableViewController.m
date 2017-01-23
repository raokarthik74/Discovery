//
//  TableViewController.m
//  discovery
//
//  Created by Karthik Rao on 1/20/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@property(strong, nonatomic)NSString* eventTitle;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.eventModel numberOfEvents];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Event* event = [[Event alloc]init];
    event = [self.eventModel eventAtIndex:indexPath.row];
    cell.textLabel.text = event.eventTitle;
        [cell.imageView sd_setImageWithURL:[NSURL URLWithString:event.pictureUrl]
                 placeholderImage:[UIImage imageNamed:@"ticket.jpg"]
                          options:SDWebImageRefreshCached];
    CGSize itemSize = CGSizeMake(100, 56);
    UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
    CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
    [cell.imageView.image drawInRect:imageRect];
    cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"buySegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        WebViewController *controller = (WebViewController* )segue.destinationViewController;
        controller.titlestr = [self.eventModel eventAtIndex:indexPath.row].eventTitle;
        controller.url = [self.eventModel eventAtIndex:indexPath.row].onClickUrl;
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"buySegue" sender:self];
}
@end







