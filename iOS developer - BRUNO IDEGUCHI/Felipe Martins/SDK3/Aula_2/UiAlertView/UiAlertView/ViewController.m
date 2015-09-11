//
//  ViewController.m
//  UiAlertView
//
//  Created by Felipe Martins on 22/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ativarAlertaSimples:(UIButton *)sender {
    
    //Title - Define o título do nosso alerta
    //message - Define a mensagem do nosso alerta
    //delegate - Liga o delegate do alertView
    //cancelButtonTitle - Recebe uma string e cria um botão com a string recebida (CancelButton)
    // otherButtonTitles - Cria botões com títulos passados via strings e separados por vírgula.
    
    
    // Criando um alertView
    UIAlertView *alertaSimples = [[UIAlertView alloc]initWithTitle:@"Aviso!" message:@"Este é um Alerta Simples" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"OK", nil];
    
    //Para distinguir elementos em tela podemos utilizar uma TAG. Uma espécie de "etiqueta" que pode ser resgatada posteriomente.
    //setando a tag em nosso alerta simples
    alertaSimples.tag = 1;
    
    
    // Metodo que apresenta o alertView e tela
    [alertaSimples show];
    
    
}

- (IBAction)ativarAlertaTexto:(UIButton *)sender {
    
    UIAlertView *alertaComTexto = [[UIAlertView alloc]initWithTitle:@"Aviso!" message:@"Este é um alerta com entrada de texto" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Beleza", nil];
    
    
    // Para que o nosso alertView tenha uma entrada de texto precisamos setar seu style
    // setamos o style nosso alertView
    alertaComTexto.alertViewStyle = UIAlertViewStylePlainTextInput;
    
    // setando uma tag para nosso alertView
    alertaComTexto.tag = 2;
    
    // mostrando o alerta com texto
    [alertaComTexto show];
    
    
}

- (IBAction)ativarAlertaSenha:(UIButton *)sender {
    
    
    UIAlertView *alertaComSenha = [[UIAlertView alloc]initWithTitle:@"Alerta!!!!" message:@"Este é um alerta com senha. Digite a senha do Face:" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Confirmar", nil];
    
    
    // Setando o style
    alertaComSenha.alertViewStyle = UIAlertViewStyleSecureTextInput;
    
    
    // Setando a tag
    alertaComSenha.tag = 3;
    
    // Mostrando o nosso alerta
    [alertaComSenha show];
    
    
    
    
    
}

- (IBAction)ativarAlertaLogin:(UIButton *)sender {
    
    
    UIAlertView *alertaLogin = [[UIAlertView alloc]initWithTitle:@"Atenção!\n Faça seu Login" message:@"Insira seu login e senha" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Ok",nil];
    
    
    // Setando o style de nossa alert
    alertaLogin.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;

    
    //----------------------------------------------------------------------
    // Para acessarmos o placeholder da nossa textField que está dentro da alertView
    
    [alertaLogin textFieldAtIndex:0].placeholder = @"E-mail";
    [alertaLogin textFieldAtIndex:1].placeholder = @"Senha";
    
    
    // Alterando o teclado
    
    [alertaLogin textFieldAtIndex:0].keyboardType = UIKeyboardTypeEmailAddress;
    
    //----------------------------------------------------------------------
    
    
    // Setando uma tag
    alertaLogin.tag = 4;

    
    
    // mostrando a alert
    [alertaLogin show];
    
    
}



#pragma mark - Métodos de UIAlertViewDelegate


// Método que roda quando clicamos algum botão em nosso alertView e o mesmo saiu da tela
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    // Este método nos retorna o buttonIndex que é o botão clicado

    
    
    switch (alertView.tag) {
        case 1:
            
            NSLog(@"AlertaSimples");
            NSLog(@"Botão Clicado: %i", buttonIndex);
            
            break;
        case 2:{
                // Caso a tag seja 2, estamos na alertView com entrada de texto
            
            if (buttonIndex == 1) {
                // caso o botão seja 1 quer dizer que o "Beleza" foi pressionado
                
                // Como temos uma textField em nosso alertView, podemos criar um elemento do mesmo tipo para receber as informações digitadas
                UITextField *textDigitado = [alertView textFieldAtIndex:0];
                NSLog(@"Texto Digitado: %@", textDigitado.text);
                
            }else{
            // Se não for o botão 1, quer dizer que o 0 (cancelButton) foi apertado
            
                NSLog(@"Cancelou!");
            
            
            }
            
                }
            break;
            
        case 3:{
            // Caso a tag seja 3, estamos no alerta com senha
            
        
            UITextField *textSenha = [alertView textFieldAtIndex:0];
            NSLog(@"A senha éhhhhhhhhh....... %@", textSenha.text);
            
            
        }
            break;
            
        case 4: {
            // Caso estejamos na tag 4, estamos na alert com login e senha.
            
            // Resgatamos os textos digitados através das strings
            
            NSString *login = [alertView textFieldAtIndex:0].text;
            NSString *senha = [alertView textFieldAtIndex:1].text;
            
            NSLog(@"Login: %@",login);
            NSLog(@"Senha: %@",senha);
            
            }
            break;
        default:
            break;
    }
    
    
    
    
  

}


@end
