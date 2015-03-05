//
//  Screen3ViewController.h
//  LaunchBox
//
//  Created by Florian Harr on 05/03/15.
//  Copyright (c) 2015 Big Nerd Ranch, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Screen3ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
- (IBAction)buttonAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *firstTextField;

@end
