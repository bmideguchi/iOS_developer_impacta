

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Ligando os delegate e datasource
    
    self.meuPickerView.delegate = self;
    self.meuPickerView.dataSource = self;
    
    
    // Iniciando os arrays
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

    // Verificamos qual component está sendo construido
    if (component == 0) {
        // caso seja o 0
        
        // Retornamos para cada linha um objeto do nosso array nomes
        return [self.arrayNomes count];
        
    }else{
        // Caso não seja o 0 (é o 1)
        
        // retornamos para cada linha um objeto do array que comtém os sobrenomes
        return [self.arraySobrenomes count];
    
    }


}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    // Verificamos em qual component estamos
    if (component == 0) {
        // Caso seja 0
        
        // Retornamos um elemento do array que comtém os nomes para cada linha
        return [self.arrayNomes objectAtIndex:row];
        
    }else{
        // caso não seja o 0 (é o 1)
    
        // Retornamos um elemento do array que contém os sobrenomes para cada linha.
        return [self.arraySobrenomes objectAtIndex:row];
    
    
    }
    

}


#pragma mark - UIPickerViewDelegate

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{


    NSLog(@"Component: %i Linha: %i",component,row);


}


@end
