//
//  KTSecondViewController.m
//  KarmiesTalk
//
//  Created by CucNV on 11/6/13.
//  Copyright (c) 2013 Karmies. All rights reserved.
//

#import "KTContactsViewController.h"
#import "KTChatViewController.h"
@interface KTContactsViewController ()

@end

@implementation KTContactsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
        cell.textLabel.text = @"ContactText demo";
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    KTChatViewController *chatVC = [[KTChatViewController alloc] initWithNibName:@"KTChatViewController" bundle:nil];
    [self.navigationController pushViewController:chatVC animated:YES];
}
@end
