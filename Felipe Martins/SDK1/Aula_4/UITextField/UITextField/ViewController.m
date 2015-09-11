//
//  ViewController.m
//  UITextField
//
//  Created by Felipe Martins on 07/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Prorpriedade que deixa um "texto modelo" em nossa textField
    self.textFieldUnica.placeholder = @"Digite seu nome aqui";
    
    // Propriedade de habilita a limpeza do conteúdo quando a textField recebe o firtResponder (começa a ser editada);
    
    self.textFieldUnica.clearsOnBeginEditing = YES;
   
    
    // Devemos ligar o Delegate ao objeto para que o mesmo responda aos métodos de delegate!
    
    self.textFieldUnica.delegate = self;
    
    
    // Propriedade que habilita a edição
   // self.textFieldUnica.enabled = NO;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_textFieldUnica release];
    [_labelTexto release];
    [super dealloc];
}


#pragma mark - Minhas Ações

// Método que é disparado quando clicamos no botão
- (IBAction)atualizarLabel:(UIButton *)sender {
    
    // Fazendo uma string que receberá o texto escrito na textField
    NSString *textoDigitado = self.textFieldUnica.text;
    
    // Fazendo uma verificação se a textFied está vazia. A propriedade length me retorna o tamanho de uma string.
    if ([textoDigitado length] == 0) {
        
        // Inserindo a mensagem em nossa label
        self.labelTexto.text = @"Digita awe!";
        
    }else{
    // Caso a textField não esteja vazia, colocamos o que está escrito nela em nossa label
        
        self.labelTexto.text = textoDigitado;
    
    }
    
    // Limpando a caixa de texto
    self.textFieldUnica.text = nil;


}



#pragma mark - Métodos de UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{


    NSLog(@"textFieldShouldReturn (Usuário clicou no return)");
    // Quando interagimos com nossa textField ela GANHA FOCO (se torna a First Responder) e isso faz com que o teclado apareça
    // Para tirarmos o teclado de cena devemos TIRAR O FOCO da nossa textField e consequentemente o teclado sairá de cena
    
    
    // Forçar o método que atualiza a label a ocorrer
    [self atualizarLabel:nil];
    
    
    // Método que tira o firstResponder de um objeto
    [self.textFieldUnica resignFirstResponder];
    
    // Limpando nossa caixa de texto
    self.textFieldUnica.text = nil;
    
    // Habilitamos o método passando YES;
    return YES;

}


//Método que é executado quando o textField ganha foco
-(void)textFieldDidBeginEditing:(UITextField *)textField{


    NSLog(@"textFieldDidBeginEditing (Usuário começou a digitar)");
    
    self.view.backgroundColor = [UIColor redColor];

}


// Metodo que é executado quando o usuário termina a digitação
-(void)textFieldDidEndEditing:(UITextField *)textField{

    
    NSLog(@"textFieldDidEndEditing (Usuário terminou a digitação)");

    self.view.backgroundColor = [UIColor lightGrayColor];
    
}




#pragma mark - Métodos de touch

// Método que é executado quando há um toque na tela
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{



    NSLog(@"Tocou na tela");
    
    [self.textFieldUnica resignFirstResponder];


}








@end
