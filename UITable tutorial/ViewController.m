//
//  ViewController.m
//  UITable tutorial
//
//  Created by Krzysztof Deneka on 11.01.2015.
//  Copyright (c) 2015 blastar.biz. All rights reserved.
//

#import "ViewController.h"
#import "RowCell.h"
#import "SectionHeaderCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    tableData = [[NSMutableArray alloc] init];
    [tableData addObject:@[@{@"key": @"1", @"label": @"item 1.1"}, @{@"key": @"1", @"label": @"item 1.2"}, @{@"key": @"3", @"label": @"item 1.3"}] ];
    [tableData addObject:@[@{@"key": @"1", @"label": @"item 2.1"}, @{@"key": @"2", @"label": @"item 2.2"}, @{@"key": @"3", @"label": @"item 2.3"}, @{@"key": @"4", @"label": @"item 2.4"}] ];
    
    table.delegate = self;
    table.dataSource = self;
    [table reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [tableData count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[tableData objectAtIndex:section] count];
}


-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 90.0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    SectionHeaderCell *cell = (SectionHeaderCell*)[tableView dequeueReusableCellWithIdentifier:@"headeritem"];
    cell.lblSectionData.text = [NSString stringWithFormat:@"Header: %i", section];
    return cell.contentView;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    RowCell *cell = (RowCell*)[tableView dequeueReusableCellWithIdentifier:@"tableitem"];
    cell.lblRowData.text = [NSString stringWithFormat:@"%i.%i", indexPath.section, indexPath.row];
    return cell;
}

@end
