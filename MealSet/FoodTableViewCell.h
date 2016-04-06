//
//  FoodTableViewCell.h
//  MealSet
//
//  Created by Jeremy Ong on 06/04/2016.
//  Copyright © 2016 Jeremy Ong. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FoodTableViewCellDelegate <NSObject>

@optional

- (void)onFoodButtonPressed:(UIButton *)sender;

@required

@end

@interface FoodTableViewCell : UITableViewCell

@property (nonatomic, assign) id <FoodTableViewCellDelegate> delegate;

@end
