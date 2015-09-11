//
//  ViewController.m
//  desafioSwipe
//
//  Created by NoiteA on 07/08/13.
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


- (IBAction)swiparViewzinha:(UISwipeGestureRecognizer *)sender {
    
    int x = self.minhaViewzinha.center.x;
    int y = self.minhaViewzinha.center.y;
    
    if (UISwipeGestureRecognizerDirectionUp) {
        
        self.meuSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self.minhaViewzinha action:];
        
        [self.minhaViewzinha addGestureRecognizer:self.meuSwipe];
        
        self.minhaViewzinha.center = CGPointMake(x, y-50);
    }
}
@end
