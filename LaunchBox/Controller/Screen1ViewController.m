//
//  Screen1ViewController.m
//  LaunchBox
//
//  Created by Florian Harr on 05/03/15.
//  Copyright (c) 2015 Big Nerd Ranch, Inc. All rights reserved.
//

#import "Screen1ViewController.h"

@interface Screen1ViewController ()

@end

@implementation Screen1ViewController
@synthesize firstLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *firstLabelString = @"Hello World";
    [firstLabel setText:@"Hello World"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)getStringForAlertView:(NSDate *)time
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setTimeStyle:NSDateFormatterFullStyle];
    
    return [dateFormatter stringFromDate:[NSDate date]];
    
    [dateFormatter setLocale:[NSLocale localeWithLocaleIdentifier:@"de_DE"]];
}

- (IBAction)firstAction:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Good Day Sir!" message:[NSString stringWithFormat:@"%@", [self getStringForAlertView:[NSDate date]]] delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Gotcha!",nil];
    alert.delegate = self;
    [alert show];
}

@end
