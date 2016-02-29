//
//  ViewController.m
//  customerFont
//
//  Created by administrator on 16/2/29.
//  Copyright © 2016年 NB_ZP. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initLabel];
    
    [self printFont];
}

- (void)initLabel
{
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,200, 200, 30)];
    myLabel.text = @"我的好兄弟%%%123";
    myLabel.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:myLabel];
    
    UILabel *myLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(20,250, 200, 30)];
    myLabel1.text = @"我的好兄弟%%%123";
    //    myLabel1.font = [UIFont systemFontOfSize:18];
    myLabel1.font = [UIFont fontWithName:@"STHeitiTC-Medium"size:18];
    [self.view addSubview:myLabel1];
    
    UILabel *myLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(20,300, 200, 30)];
    myLabel2.text = @"我的好兄弟%%%123";
    //        myLabel1.font = [UIFont systemFontOfSize:18];
    myLabel2.font = [UIFont fontWithName:@"STHeitiTC-Light"size:18];
    [self.view addSubview:myLabel2];

}

- (void)printFont
{
    NSArray *familyNames = [UIFont familyNames];
    for( NSString *familyName in familyNames){
        printf( "Family: %s \n", [familyName UTF8String] );
        NSArray *fontNames = [UIFont fontNamesForFamilyName:familyName];
        for( NSString *fontName in fontNames ){
            printf( "\tFont: %s \n", [fontName UTF8String] );
        }
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
