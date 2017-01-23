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

//number of section in table view
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

//number of rows in each section. Here, it is number of events
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.eventModel numberOfEvents];
}


//data for each cell of table
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    }
    Event* event = [[Event alloc]init];
    event = [self.eventModel eventAtIndex:indexPath.row];
    cell.title.text = event.eventTitle;
        [cell.image sd_setImageWithURL:[NSURL URLWithString:event.pictureUrl]
                 placeholderImage:[UIImage imageNamed:@"ticket.jpg"]
                          options:SDWebImageRefreshCached];
    return cell;
}

//segue to next view controller
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"buySegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        WebViewController *controller = (WebViewController* )segue.destinationViewController;
        controller.titlestr = [self.eventModel eventAtIndex:indexPath.row].eventTitle;
        controller.url = [self.eventModel eventAtIndex:indexPath.row].onClickUrl;
    }
}

//handles case when each row is clicked upon
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"buySegue" sender:self];
}
@end







