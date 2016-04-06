//
//  DrinkTableViewCell.h
//  MealSet
//
//  Created by Jeremy Ong on 06/04/2016.
//  Copyright © 2016 Jeremy Ong. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DrinkTableViewCellDelegate <NSObject>

@optional

- (void)onDrinkButtonPressed:(UIButton *)button;

@required

@end

@interface DrinkTableViewCell : UITableViewCell

@property (nonatomic, assign) id <DrinkTableViewCellDelegate> delegate;

@end
