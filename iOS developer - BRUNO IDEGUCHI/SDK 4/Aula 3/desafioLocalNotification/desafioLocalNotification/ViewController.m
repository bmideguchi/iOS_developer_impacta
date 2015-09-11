//
//  ViewController.m
//  desafioLocalNotification
//
//  Created by NoiteA on 16/08/13.
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
    
    self.meuPickerView.delegate = self;
    self.dadosComponent0 = [[NSMutableArray alloc]init];
    self.dadosComponent1 = [[NSMutableArray alloc]init];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAtivar:(UIButton *)sender {
    
    
    
}

#pragma mark - metodos de UIPickerViewDelegate

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    if (component == 0) {
        self.horas = row;
        NSLog(@"horas: %i", self.horas);
    }
    
    if (component == 1) {
        self.minutos = row;
        NSLog(@"minutos: %i", self.minutos);
    }
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    if (component == 0) {
        return 24;
        
        for (int i = 0; i<=24; i++) {
            [self.dadosComponent0 addObject:[NSString stringWithFormat:@"%i", i]];
            NSLog(@"%@", self.dadosComponent0);
        }
    }
    
    else {
        return 60;
        
        for (int i = 0; i<=60; i++) {
            [self.dadosComponent1 addObject:[NSString stringWithFormat:@"%i", i]];
            NSLog(@"%@", self.dadosComponent1);
        }
    }
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    

    self.stringQueArmazenaRow = [NSString stringWithFormat:@"%i", row];
    
    return self.stringQueArmazenaRow;
    
}









@end
