//
//  tela2ViewController.m
//  UITabBarController
//
//  Created by NoiteA on 01/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "tela2ViewController.h"

@interface tela2ViewController ()

@end

@implementation tela2ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mudarSwitch:(UISwitch *)sender {
    
    if (sender.on) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    else {
        self.view.backgroundColor = [UIColor blackColor];
    }
    
}
@end
