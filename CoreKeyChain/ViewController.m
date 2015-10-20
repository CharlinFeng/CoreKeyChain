//
//  ViewController.m
//  test
//
//  Created by 冯成林 on 15/10/20.
//  Copyright © 2015年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "CoreKeyChain.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)saveAction:(id)sender {
    [CoreKeyChain removeValueForKey:@"price2"];
}

- (IBAction)read:(id)sender {
    NSLog(@"%i",[CoreKeyChain boolForKey:@"price2"]);
}

- (IBAction)modify:(id)sender {
    
}

- (IBAction)delete:(id)sender {
}






@end
