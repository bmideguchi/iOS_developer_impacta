//
//  ViewController.m
//  desafioLanterna
//
//  Created by NoiteA on 10/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_botaoLanterna release];
    [super dealloc];
}

- (IBAction)ativarBotaoLanterna:(UIButton *)sender {
    [self.botaoLanterna set]
}

@end
