//
//  TableViewCell.h
//  discovery
//
//  Created by Karthik Rao on 1/22/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end
