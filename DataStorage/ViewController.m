//
//  ViewController.m
//  DataStorage
//
//  Created by wangsl-iMac on 15/1/24.
//  Copyright (c) 2015年 chengtz-iMac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSArray* myPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString* myDocPath = [myPaths objectAtIndex:0];
    NSString* filePath = [myDocPath stringByAppendingPathComponent:@"properties.plist"];
    
    NSMutableArray * arrry = [[NSMutableArray alloc]init];
    [arrry addObject:@"123"];
    [arrry addObject:@"456"];
    [arrry addObject:@"789"];
    
    BOOL bRet = [arrry writeToFile:filePath atomically:YES];
    
    if ([[NSFileManager defaultManager]fileExistsAtPath:filePath]){
        NSArray * array = [NSArray arrayWithContentsOfFile:filePath];
        NSString * str1 = array[0];
        NSString * str2 = array[1];
        NSString * str3 = array[2];
    }
    
    
}
///Users/kong/Library/Developer/CoreSimulator/Devices/5AF1FA9A-6C36-4D74-96E9-5DFA49A4C2C4/data/Containers/Data/Application/6EFFE9A3-B54E-47B5-B114-6F05A5848E56/Documents/properties.plist
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
