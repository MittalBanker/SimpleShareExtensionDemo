//
//  ViewController.m
//  SimpleShareExtensionDemo
//
//  Created by DIGICORP on 16/06/16.
//  Copyright © 2016 DIGICORP. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSUserDefaults *userDefaults = [[NSUserDefaults alloc]initWithSuiteName:@"group.containingapp"];
    NSDictionary *dict = [userDefaults valueForKey:@"img"];
    if(dict){
        NSData *data = [dict valueForKey:@"imgData"];
        imageMain.image = [UIImage imageWithData:data];
        lblSubTitle.text = [dict valueForKey:@"name"];
        [userDefaults removeObjectForKey:@"img"];
    }
}

@end
