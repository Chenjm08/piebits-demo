//
//  Screen1ViewControllerTests.m
//  LaunchBox
//
//  Created by Florian Harr on 05/03/15.
//  Copyright (c) 2015 Big Nerd Ranch, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Screen1ViewController.h"

@interface Screen1ViewControllerTests : XCTestCase
{
    Screen1ViewController *screen1ViewController;
    NSDate *date;
    NSDateFormatter *dateFormatter;
}
@end

@implementation Screen1ViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    screen1ViewController = [[Screen1ViewController alloc] init];
    dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setTimeStyle:NSDateFormatterFullStyle];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testDate {
    XCTAssertEqualObjects([screen1ViewController getStringForAlertView:[NSDate date]], [dateFormatter stringFromDate:[NSDate date]]);
}

@end
