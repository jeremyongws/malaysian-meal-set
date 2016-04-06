//
//  ViewController.m
//  MealSet
//
//  Created by Jeremy Ong on 06/04/2016.
//  Copyright © 2016 Jeremy Ong. All rights reserved.
//

#import "FoodViewController.h"
#import "FoodTableViewCell.h"
#import "DrinkTableViewCell.h"

@interface FoodViewController () <UITableViewDelegate, UITableViewDataSource, FoodTableViewCellDelegate, DrinkTableViewCellDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *foodImageView;
@property (weak, nonatomic) IBOutlet UIImageView *drinkImageView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FoodViewController

- (void)viewDidLoad {
	self.tableView.delegate = self;
	self.tableView.dataSource = self;
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	if (indexPath.row == 0){
		FoodTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FoodCell"];
		cell.delegate = self;
		return cell;
	} else {
		DrinkTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkCell"];
		cell.delegate = self;
		return cell;
	}
}

- (void)onDrinkButtonPressed:(UIButton *)sender{
	self.drinkImageView.image = sender.imageView.image;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return 2;
}

- (void)onFoodButtonPressed:(UIButton *)sender{
	self.foodImageView.image = sender.imageView.image;
}

@end
