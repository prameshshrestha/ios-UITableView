//
//  ViewController.m
//  UITableView
//
//  Created by pramesh on 2/6/14.
//  Copyright (c) 2014 pramesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize txtInsert, myTableView;
- (void)viewDidLoad
{
    [super viewDidLoad];
    arrBarcode = [[NSMutableArray alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPressed:(id)sender {
    [arrBarcode addObject:txtInsert.text];
    NSLog(@"array count is  %i ",[arrBarcode count]);
    [self.myTableView reloadData];
    [txtInsert resignFirstResponder];
}

// UITableView Delegate Methods
-(NSInteger)numberOfSectionsInTableView: (UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [arrBarcode count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell Identifier";
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    NSString *fruit = [arrBarcode objectAtIndex:[indexPath row]];
    [cell.textLabel setText:fruit];
    //if (cell == nil) {
    //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainCell"];
    //}
    return cell;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [txtInsert resignFirstResponder];
    return true;
}
@end
