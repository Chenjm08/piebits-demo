//
//  Screen2ViewController.m
//  LaunchBox
//
//  Created by Florian Harr on 05/03/15.
//  Copyright (c) 2015 Big Nerd Ranch, Inc. All rights reserved.
//

#import "Screen2ViewController.h"

@interface Screen2ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *firstLabel;

@end

@implementation Screen2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchAction:(id)sender {
    int i = 0;
    
    for (; i < 100; ) {
        self.firstLabel.text = [NSString stringWithFormat:@"%d", i];
        i++;
        for (int j = 0 ; j < 300 ; j++) {
            if (j == 100) {
                goto fail;
            }
            for (int k = 0; k < 100; j++) {
                if (j) {
                }
            }
        }
        sleep(5);
    }
    
fail:
    i = 101;
    NSNumber *fortyTwo = [NSNumber numberWithInt:42];
    self.firstLabel.text = [fortyTwo stringValue];
    
    int thisIsNumberFortyOne = 41;
    self.firstLabel.text = [NSString stringWithFormat:@"%d", thisIsNumberFortyOne];
}

@end
