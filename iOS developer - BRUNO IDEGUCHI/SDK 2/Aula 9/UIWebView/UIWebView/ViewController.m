//
//  ViewController.m
//  UIWebView
//
//  Created by NoiteA on 15/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.minhaWebView.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Minhas ações

- (IBAction)voltar:(UIButton *)sender {
    [self.minhaWebView goBack];
    NSLog(@"Voltar");
}

- (IBAction)avancar:(UIButton *)sender {
    [self.minhaWebView goForward];
    NSLog(@"Avançar");
}

- (IBAction)carregar:(UIButton *)sender {
    //Criando uma string que será o endereço a ser carregado
    NSString *stringEnderecoSite = @"http://livro.atheva.com.br";
    
    //Criando uma URL a partir de uma string
    NSURL *urlSite = [[NSURL alloc]initWithString:stringEnderecoSite];
    
    //Nossa webView pede como parâmetro de entrada um NSURLRequest. Criaremos a partir da URL acima
    NSURLRequest *requestUrlSite = [[NSURLRequest alloc]initWithURL:urlSite];
    
    //Carregando a página
    [self.minhaWebView loadRequest:requestUrlSite];
}

#pragma mark - UI Web View Delegate

-(void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"Carregando");
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"Carregamento finalizado");
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"Erro");    
}




@end
