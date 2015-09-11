//
//  ViewController.m
//  DesafioMiniNavegador
//
//  Created by Felipe Martins on 17/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Ligando os delegates
    self.textFieldEndereco.delegate = self;
    self.webViewSite.delegate = self;
    
    // Habilitando a propriedade que escondo um activity quando o mesmo está parado
    self.activityCarregamento.hidesWhenStopped = YES;
    
    // Habilitando a limpeza quando iniciamos uma edição
    self.textFieldEndereco.clearsOnBeginEditing = YES;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - UIWebViewDelegate

// Método que roda quando inicia o carregamento da webView
-(void)webViewDidStartLoad:(UIWebView *)webView{

    // Animando o activity
    
    [self.activityCarregamento startAnimating];
    NSLog(@"Caregando....");

}

// Método que roda quando termina o carregamento da webView
-(void)webViewDidFinishLoad:(UIWebView *)webView{

    // Parando o activity
    [self.activityCarregamento stopAnimating];
    NSLog(@"Carregamento Concluído");

    // retornamos para a textField o endereço atual
    
    self.textFieldEndereco.text = self.webViewSite.request.URL.absoluteString;
    
  
    
}


// Método que roda quando da erro
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{



}


#pragma mark - UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{


    // Criamos uma string a partir do text digitado
    NSString *enderecoDigitado = self.textFieldEndereco.text;
    
    // Criando uma string para concatenar o prefixo HTTP://
    
    NSString *textoFinal;
    
  //  textoFinal = [NSString stringWithFormat:@"http://%@", enderecoDigitado];
    
    // Criando uma URL a partir do texto com o HTTP
    
    NSRange temHTTP = [enderecoDigitado rangeOfString:@"http://"];
    
    if (temHTTP.location == NSNotFound ) {
    
        textoFinal = [NSString stringWithFormat:@"http://%@", enderecoDigitado];
    }else{
    
    
        textoFinal = enderecoDigitado;
    
    }
    
    
    
    NSURL *urlSite = [[NSURL alloc]initWithString:textoFinal];
    
    // Criando uma requisição de URL a partir da URL criada acima
    NSURLRequest *requestSite = [[NSURLRequest alloc]initWithURL:urlSite];
    
    // Carregando nossa webView com a solicitação
    [self.webViewSite loadRequest:requestSite];
    
    // Retirando o teclado da tela
    [self.textFieldEndereco resignFirstResponder];
    

    return YES;
}




#pragma mark - Minhas Ações

- (IBAction)voltar:(UIBarButtonItem *)sender {
    
    // Método que volta para a página anterior
    [self.webViewSite goBack];
    NSLog(@"Voltar");
    
}

- (IBAction)atualizar:(UIBarButtonItem *)sender {
    
    // Método que atualiza a página
    [self.webViewSite reload];
    NSLog(@"Atualizar");
}

- (IBAction)avancar:(UIBarButtonItem *)sender {
    
    // Método que vai para a página seguinte
    
    [self.webViewSite goForward];
    NSLog(@"Avancar");
}
@end
