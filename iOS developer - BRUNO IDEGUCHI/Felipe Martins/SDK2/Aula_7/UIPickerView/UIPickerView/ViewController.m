//
//  ViewController.m
//  UIPickerView
//
//  Created by Felipe Martins on 10/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Ligando o delegate e o datasource
    self.meuPickerView.delegate = self;
    self.meuPickerView.dataSource = self;
    
    // Iniciando o array com os dados que serão exibidos no picker
    self.arrayDados = @[@"Lilica", @"Garibaldo", @"Florentino", @"Felipe", @"Lozimar"];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UIPickerViewDataSource

// Método que define o numero de components (Roletinhas) que o pickerView irá possuir.
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{


    // Retornamos um para que ele tenha um unico component
    return 1;

}


// Quantidade de linhas que o picker irá possuir
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{

    // Em nosso caso para ser algo mais dinâmico retornaremos a quantidade de linhas baseado no count do nosso array.
    
    
    return [self.arrayDados count];
}

// Define o título para cada linha no component
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{


    return [self.arrayDados objectAtIndex:row];

}


#pragma mark - UIPickerViewDelegate

// Método que retorna uma escolha do usuário
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    //Retonamos a linha escolhida
    NSLog(@"linha: %i", row);

}


#pragma mark - Minhas ações
// Método que roda sempre que o usuário toca na TELA
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    
    //Método que faz a seleção do picker
    
    [self.meuPickerView selectRow:0 inComponent:0 animated:YES];
    
    
}


@end
