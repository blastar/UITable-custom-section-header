//
//  ViewController.h
//  UITable tutorial
//
//  Created by Krzysztof Deneka on 11.01.2015.
//  Copyright (c) 2015 blastar.biz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
    __weak IBOutlet UITableView *table;
    NSMutableArray* tableData;
}

@end

