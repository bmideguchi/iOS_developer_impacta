//
//  ViewController.m
//  DesafioSwipe
//
//  Created by Felipe Martins on 07/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
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

- (IBAction)swipeCima:(UISwipeGestureRecognizer *)sender {
    
    
    [UIView animateWithDuration:0.5 animations:^{
       
        
        self.viewzinha.center = CGPointMake(self.viewzinha.center.x, self.viewzinha.center.y - 30);
        
    }];
    
    
    NSLog(@"Cima");
}

- (IBAction)swipeBaixo:(UISwipeGestureRecognizer *)sender {
    
    
    NSLog(@"Baixo");
    
    [UIView animateWithDuration:0.5 animations:^{
        
        
        self.viewzinha.center = CGPointMake(self.viewzinha.center.x, self.viewzinha.center.y + 30);
        
    }];
    

    
}

- (IBAction)swipeEsquerda:(UISwipeGestureRecognizer *)sender {
    
    
    [UIView animateWithDuration:0.5 animations:^{
        
        
        self.viewzinha.center = CGPointMake(self.viewzinha.center.x  - 30, self.viewzinha.center.y);
        
    }];
    

    
    NSLog(@"Esquerda");
}

- (IBAction)swipeDireita:(UISwipeGestureRecognizer *)sender {
    
    
    [UIView animateWithDuration:0.5 animations:^{
        
        
        self.viewzinha.center = CGPointMake(self.viewzinha.center.x  + 30, self.viewzinha.center.y);
        
    }];
    
    
    NSLog(@"Direita");
}

- (IBAction)disparouTap:(UITapGestureRecognizer *)sender {
    
    
    
    float red = arc4random()%256;
    float green = arc4random()%256;
    float blue = arc4random()%256;
    
    
    
    [UIView animateWithDuration:1.0 animations:^{
        
        
        self.viewzinha.backgroundColor = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
        
    }];
    
    
    
    NSLog(@"Tap");
}
@end
