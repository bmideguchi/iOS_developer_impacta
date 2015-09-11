//
//  ViewController.m
//  UIWebView
//
//  Created by Felipe Martins on 15/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Ligando o delegate
    self.minhaWebView.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UIWebViewDelegate

// Método que roda quando a webView inicia um carregamento
-(void)webViewDidStartLoad:(UIWebView *)webView{

    NSLog(@"Carregando...");

}

// Método que roda quando a webView termina um carregamento
-(void)webViewDidFinishLoad:(UIWebView *)webView{

    NSLog(@"Carregamento Finalizado!");

}

// Método que roda quando por algum motivo o carregamento falha
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{

    NSLog(@"Xiiiiiiiiii deu erro!");

}

#pragma mark - Minhas ações

- (IBAction)carregar:(UIButton *)sender {
    
    
    // Criando uma string que será o endereço a ser carregado
    NSString *stringEnderecoSite = @"http://www.terra.com.br";
    
    // Criando uma URL a partir de uma string
    NSURL *urlSite = [[NSURL alloc]initWithString:stringEnderecoSite];
    
    // Nossa webView pede como parametro de entrada um NSURLRequest, criaremos à partir da URL acima
    NSURLRequest *requestUrlSite = [[NSURLRequest alloc]initWithURL:urlSite];
    
    // Carregando a página a partir da NSURLRequest acima
    [self.minhaWebView loadRequest:requestUrlSite];
    
    
}

// Botão que voltará para a pagina anterior
- (IBAction)voltar:(UIButton *)sender {
    
    [self.minhaWebView goBack];
    NSLog(@"Voltar");
    
}

// Botão que avançará para a próxima página
- (IBAction)avancar:(UIButton *)sender {
    
    
    [self.minhaWebView goForward];
    NSLog(@"Avançar");
}
@end
