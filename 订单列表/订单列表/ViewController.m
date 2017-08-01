//
//  ViewController.m
//  订单列表
//
//  Created by 刘健 on 01/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import "ViewController.h"
#import "OrderListTableViewCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    self.dataArray = [[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellID = @"myCell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[OrderListTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = [self.dataArray objectAtIndex:indexPath.row];
    
    return cell;
    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.dataArray removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
    return @"删除哈哈哈哈哈";
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 300;
}

@end
