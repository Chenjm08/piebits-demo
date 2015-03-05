//
//  Screen3ViewController.m
//  LaunchBox
//
//  Created by Florian Harr on 05/03/15.
//  Copyright (c) 2015 Big Nerd Ranch, Inc. All rights reserved.
//

#import "Screen3ViewController.h"

@interface Screen3ViewController ()

@end

@implementation Screen3ViewController
@synthesize firstLabel, firstTextField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonAction:(id)sender {
    
    NSError *error;
    
    if ( error != nil ) {
        firstLabel.text = @"You did it!";
    }else {
        firstLabel.text = @"Sorry, no!";
    }
}
@end
