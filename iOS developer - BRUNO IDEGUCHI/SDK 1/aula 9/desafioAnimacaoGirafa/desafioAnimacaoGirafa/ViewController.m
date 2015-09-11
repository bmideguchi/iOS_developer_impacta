//
//  ViewController.m
//  desafioAnimacaoGirafa
//
//  Created by NoiteA on 21/06/13.
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
    
    self.mutableArrayAnimacaoGirafa = [[NSMutableArray alloc]init];
    for (int i = 1; i <= 13; i++){
        
        NSString *girafa = [NSString stringWithFormat:@"frame-%i.gif", i];
        UIImage *imagemGirafa = [UIImage imageNamed:girafa];
        [self.mutableArrayAnimacaoGirafa addObject:imagemGirafa];
        NSLog(@"%i", i);
    }
    
    self.imageViewTopLeft.animationImages = self.mutableArrayAnimacaoGirafa;
    self.imageViewTopLeft.animationDuration = 5.0;
    self.imageViewTopLeft.animationRepeatCount = 1;
    self.imageViewTopLeft.image = [self.mutableArrayAnimacaoGirafa objectAtIndex:8];
    [self.imageViewTopLeft startAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_imageViewTopLeft release];
    [_imageViewTopRight release];
    [_imageViewBottomLeft release];
    [_imageViewBottomRight release];
    [_segmentedControlUnico release];
    [super dealloc];
}
- (IBAction)segmentedControlEscolherGirafa:(UISegmentedControl *)sender {
    
    

int indice = sender.selectedSegmentIndex;

switch (indice){
    case 0:{
        self.imageViewTopLeft.animationImages = self.mutableArrayAnimacaoGirafa;
        self.imageViewTopLeft.animationDuration = 5.0;
        self.imageViewTopLeft.animationRepeatCount = 1;
        self.imageViewTopLeft.image = [self.mutableArrayAnimacaoGirafa objectAtIndex:8];
        [self.imageViewTopLeft startAnimating];
        break;
    };
    case 1:{
        self.imageViewTopRight.animationImages = self.mutableArrayAnimacaoGirafa;
        self.imageViewTopRight.animationDuration = 5.0;
        self.imageViewTopRight.animationRepeatCount = 1;
        self.imageViewTopRight.image = [self.mutableArrayAnimacaoGirafa objectAtIndex:8];
        [self.imageViewTopRight startAnimating];
        break;
    };
    case 2:{
        self.imageViewBottomLeft.animationImages = self.mutableArrayAnimacaoGirafa;
        self.imageViewBottomLeft.animationDuration = 5.0;
        self.imageViewBottomLeft.animationRepeatCount = 1;
        self.imageViewBottomLeft.image = [self.mutableArrayAnimacaoGirafa objectAtIndex:8];
        [self.imageViewBottomLeft startAnimating];
        break;
    };
    case 3:{
        self.imageViewBottomRight.animationImages = self.mutableArrayAnimacaoGirafa;
        self.imageViewBottomRight.animationDuration = 5.0;
        self.imageViewBottomRight.animationRepeatCount = 1;
        self.imageViewBottomRight.image = [self.mutableArrayAnimacaoGirafa objectAtIndex:8];
        [self.imageViewBottomRight startAnimating];
        break;
    };
}
}

@end
