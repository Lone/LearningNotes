//
//  MasterTableViewController.m
//  JLN-5_NavigationBar
//
//  Created by Jymn_Chen on 15/1/19.
//  Copyright (c) 2015年 Jymn_Chen. All rights reserved.
//

#import "MasterTableViewController.h"

#import "DetailViewController.h"

@interface MasterTableViewController ()

@property (nonatomic, strong) NSArray *objects;

@property (nonatomic, strong) DetailViewController *detailController;

@end

@implementation MasterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Master";
    
    /** 5. 修改导航栏标题为图片 **/
    // self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"appcoda-logo.png"]];
    
    /** 6. 添加多个按钮 **/
    UIBarButtonItem *shareItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:nil];
    UIBarButtonItem *cameraItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:nil];
    NSArray *actionButtonItems = @[shareItem, cameraItem];
    self.navigationItem.rightBarButtonItems = actionButtonItems;
    
    self.objects = @[@"A", @"B", @"C", @"D", @"E", @"F"];
    
    self.detailController = [DetailViewController new];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return (NSInteger)(_objects.count);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = _objects[(NSUInteger)(indexPath.row)];
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    _detailController.detail = _objects[(NSUInteger)indexPath.row];
    
    [self.navigationController pushViewController:_detailController animated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
