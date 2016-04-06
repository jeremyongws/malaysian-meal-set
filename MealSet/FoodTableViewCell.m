//
//  FoodTableViewCell.m
//  MealSet
//
//  Created by Jeremy Ong on 06/04/2016.
//  Copyright © 2016 Jeremy Ong. All rights reserved.
//

#import "FoodTableViewCell.h"

@implementation FoodTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (IBAction)onFoodButtonPressed:(id)sender {
	[self.delegate onFoodButtonPressed:sender];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
