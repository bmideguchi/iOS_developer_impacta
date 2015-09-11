

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Limpando a textVew e desabilitando sua edição
    self.textViewTabuada.text = nil;
    self.textViewTabuada.editable = NO;
    
    // Escolhendo o tipo de teclado da textField
    self.textFieldNumero.keyboardType = UIKeyboardTypeNumberPad;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)iniciar:(UIButton *)sender {
    
    
    // Verificamos se há texto em nossa textField
    
    if (self.textFieldNumero.text.length > 0) {
        // Caso haja texto
        
        
        // Resgatando o número digitado pelo usuário
        
        int numeroEscolhido = [self.textFieldNumero.text intValue];
        
        // Criando um GCD para gerenciar a tabuada em um multiprocessamento
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
           
            
            // Criamos um for para gerar a tabuada
            
            
            for (int i = 1; i <=10; i++) {
                
                
                NSLog(@"%i X %i = %i", numeroEscolhido, i, numeroEscolhido * i);
                
                [NSThread sleepForTimeInterval:1.0];
                
                
                // Criando outro multiprocessamento para atualizarmos a interface
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    
                    self.textViewTabuada.text = [self.textViewTabuada.text stringByAppendingString:[NSString stringWithFormat:@"\n %i X %i = %i", numeroEscolhido, i, numeroEscolhido * i]];
                    
                });
                
            }
            
        });
        
        
        // baixando o teclado
        [self.textFieldNumero resignFirstResponder];
        
        
    }else{
        // caso não haja texto digitado
    
    
        // Criamos um alerta para avisar o usuário
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Alerta!" message:@"Escolhe um número, antes de prosseguir" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        
        
        // Mostrando um alerta para o usuário
        [alerta show];
        
        
    }
    
    
    
    
}
@end
