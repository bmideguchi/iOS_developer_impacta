//
//  ViewController.m
//  StoryboardDismiss
//
//  Created by Felipe Martins on 28/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Colocando um placeholder em nossa textField
    
    self.textFieldUnica.placeholder = @"Digita awe!";
    
    NSLog(@"ViewDidLoad Tela 1");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
