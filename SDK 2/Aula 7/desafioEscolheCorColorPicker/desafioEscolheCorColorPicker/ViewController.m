//
//  ViewController.m
//  desafioEscolheCorColorPicker
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
    
    //Ligando o delegate e datasource
    self.pickerViewEscolheCor.delegate = self;
    self.pickerViewEscolheCor.dataSource = self;
    
    //Iniciando o arrayCores
    self.arrayCores = @[@"Branco", @"Preto", @"Azul", @"Amarelo", @"Laranja", @"Vermelho", @"Verde"];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UIPickerViewDelegate

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    /*
    switch (row) {
        
        case 0:
            self.view.backgroundColor = [UIColor whiteColor];
            break;
            
        case 1:
            self.view.backgroundColor = [UIColor blackColor];
            break;
            
        case 2:
            self.view.backgroundColor = [UIColor blueColor];
            break;
            
        case 3:
            self.view.backgroundColor = [UIColor yellowColor];
            break;
            
        case 4:
            self.view.backgroundColor = [UIColor orangeColor];
            break;
            
        case 5:
            self.view.backgroundColor = [UIColor redColor];
            break;
            
        case 6:
            self.view.backgroundColor = [UIColor greenColor];
            break;
            
        default:
            break;
    }
    
    if (row == 1 || row == 2) {
        self.labelUnica.textColor = [UIColor whiteColor];
    }
    else{
        self.labelUnica.textColor = [UIColor blackColor];
    }
     */
    
    
    self.arrayComBackgroundCores = @[[UIColor whiteColor], [UIColor blackColor], [UIColor blueColor], [UIColor yellowColor], [UIColor orangeColor], [UIColor redColor], [UIColor greenColor]];
    
    self.view.backgroundColor = [self.arrayComBackgroundCores objectAtIndex:row];
    
}

#pragma mark - UIPickerViewDataSource

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.arrayCores count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self.arrayCores objectAtIndex:row];
}


@end
