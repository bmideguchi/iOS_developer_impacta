//
//  ViewController.m
//  pickerViewComMaisDeUmaColuna
//
//  Created by NoiteA on 10/07/13.
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
    
    //Ligando os delegates e dataSources
    self.meuPickerView.delegate = self;
    self.meuPickerView.dataSource = self;
    
    //Iniciando os arrays
    self.arrayNomes = @[@"Felipe", @"Lilica", @"Josefina", @"Garibaldo"];
    self.arraySobrenomes = @[@"Martins", @"Garibaldino", @"Alho"];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIPickerViewDataSource

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    //Verificamos qual component está sendo construido
    if (component == 0) {
        return [self.arrayNomes count];
    }
    
    else{
        return [self.arraySobrenomes  count];
    }
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    if (component == 0) {
        return [self.arrayNomes objectAtIndex:row];
    }
    
    else {
        return [self.arraySobrenomes objectAtIndex:row];
    }
    
}






#pragma mark - UIPickerViewDelegate

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSLog(@"Component: %i e linha: %i", component, row);
    
}













@end
