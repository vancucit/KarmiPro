//
//  KTSecondViewController.h
//  KarmiesTalk
//
//  Created by CucNV on 11/6/13.
//  Copyright (c) 2013 Karmies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KTContactsViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end
