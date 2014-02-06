//
//  ViewController.h
//  UITableView
//
//  Created by pramesh on 2/6/14.
//  Copyright (c) 2014 pramesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>{
    NSMutableArray *arrBarcode;
}

@property (weak, nonatomic) IBOutlet UITextField *txtInsert;
- (IBAction)btnPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@end
