//
//  ViewController.m
//  UITabBarController
//
//  Created by NoiteA on 01/07/13.
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
    
    //Limpando o texto da label
    self.labelTexto.text = nil;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alterarSlider:(UISlider *)sender {
    
    self.labelTexto.text = [NSString stringWithFormat:@"%.2f", sender.value];
    
}
@end
