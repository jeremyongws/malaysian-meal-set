//
//  DrinkTableViewCell.m
//  MealSet
//
//  Created by Jeremy Ong on 06/04/2016.
//  Copyright © 2016 Jeremy Ong. All rights reserved.
//

#import "DrinkTableViewCell.h"

@implementation DrinkTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


- (IBAction)onDrinkButtonPressed:(UIButton *)sender {
	[self.delegate onDrinkButtonPressed:sender];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
