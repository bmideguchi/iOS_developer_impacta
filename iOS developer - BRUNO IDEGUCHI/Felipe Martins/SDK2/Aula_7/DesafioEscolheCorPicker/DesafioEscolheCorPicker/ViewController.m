

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //ligando o delegate e o datasource
    self.pickerViewCores.delegate = self;
    self.pickerViewCores.dataSource = self;
    
    // Iniciando o array que contém os nomes das cores
    self.arrayNomesCores = @[@"Branco",@"Preto", @"Azul", @"Amarelo", @"Laranja", @"Vermelho", @"Verde"];
    
    // Iniciando o array que contém as cores em si (UIColor).
    
    self.arrayCores = @[[UIColor whiteColor], [UIColor blackColor], [UIColor blueColor], [UIColor yellowColor], [UIColor orangeColor], [UIColor redColor], [UIColor greenColor]];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Define o numero de components no pickerView
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{

    // Retornamos 1 pois terá apenas uma roleta
    return 1;

}
// Define o número de linhas em nosso component
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    // Como só temos um component, retornamos direto o count do array [no caso 7 linhas]
    return [self.arrayNomesCores count];


}
// Define o título de cada linhas
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    // Retornamos cada elemento do array para uma linha
    return [self.arrayNomesCores objectAtIndex:row];


}



-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{

    self.view.backgroundColor = [self.arrayCores objectAtIndex:row];
    


}



@end
