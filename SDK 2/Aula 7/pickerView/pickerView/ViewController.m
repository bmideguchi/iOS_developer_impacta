//
//  ViewController.m
//  pickerView
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
    
    //Ligando o delegate e o dataSource
    self.meuPickerView.delegate = self;
    self.meuPickerView.dataSource = self;
    
    //Iniciando o array com os dados do picker
    self.arrayDados = @[@"Lilica", @"Garibaldo", @"Florentino", @"Felipe", @"Lozimar"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - minhas ações

//Método que roda sempre que o usuário toca na tela
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    //Método que faz a seleção do picker
    [self.meuPickerView selectRow:0 inComponent:0 animated:YES];
    
}



#pragma mark - UIPickerViewDataSource

//Método que definirá o número de components (roletinhas) que o pickerView irá possuir
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}


//Método que definirá a quantidade de linhas
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    //Em nosso caso, para ser algo mais dinâmico retornaremos a quantidade de linhas baseado no count do nosso array:
    return [self.arrayDados count];
}


//Método que definirá o título para cada linha no component
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [self.arrayDados objectAtIndex:row];
}




#pragma mark - UIPickerViewDelegate

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSLog(@"component: %i, e linha: %i", component, row);
    
}



@end