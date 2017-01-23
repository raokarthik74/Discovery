//
//  TableViewCell.m
//  discovery
//
//  Created by Karthik Rao on 1/22/17.
//  Copyright © 2017 Karthik Rao. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(7.5,7.5,100,56);
}
@end
