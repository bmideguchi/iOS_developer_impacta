//
//  ViewController.m
//  WebService
//
//  Created by Felipe Martins on 30/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    // http://graph.facebook.com/NOMEDOUSUARIO
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pesquisar:(UIButton *)sender {
    
    
#pragma mark - Opção 1
    
    /*
     
    // Criando o path para o webService
    NSString *pathWebService = @"http://graph.facebook.com/";
    
    // concatenar o que foi digitado
    
    pathWebService = [pathWebService stringByAppendingString:self.textFieldNomeUsuario.text];
    
    // Criamod uma URL a partir do path
    NSURL *urlWebService = [[NSURL alloc]initWithString:pathWebService];
    
    // Criando um objete da classe responsável por dados binaário.
    NSData *dadosWebService = [[NSData alloc]initWithContentsOfURL:urlWebService];
    
    // Criando um dicionário para receber os dados do JSON
    
    NSDictionary *dicionarioPessoa = [NSJSONSerialization JSONObjectWithData:dadosWebService options:kNilOptions error:nil];
    
    // Mostrando os dados recebidos
    NSLog(@"%@", dicionarioPessoa);
    
    
    
    // Exibindo nas labels
    self.labelSexo.text = [dicionarioPessoa objectForKey:@"gender"];
    self.labelID.text = [dicionarioPessoa objectForKey:@"id"];
    self.labelLocalidade.text = [dicionarioPessoa objectForKey:@"locale"];
    self.labelNome.text = [dicionarioPessoa objectForKey:@"name"];
    
    */
    
    
#pragma mark - Opção 2
    
    
    // Criando o path para o webService
    NSString *pathWebService = @"http://graph.facebook.com/";
    
    // concatenar o que foi digitado
    
    pathWebService = [pathWebService stringByAppendingString:self.textFieldNomeUsuario.text];
    
    // Criamos uma URL a partir do path
    NSURL *urlWebService = [[NSURL alloc]initWithString:pathWebService];

    // Criando uma request
    NSURLRequest *request = [NSURLRequest requestWithURL:urlWebService];
    
    // Enviando uma requisição assíncrona
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * resposta, NSData * dados, NSError * erro) {
        
        
        
        
        // Criando o dicionário a partir do JSON
           NSDictionary *dicionarioPessoa = [NSJSONSerialization JSONObjectWithData:dados options:kNilOptions error:nil];
        
        
        
        self.labelSexo.text = [dicionarioPessoa objectForKey:@"gender"];
        self.labelID.text = [dicionarioPessoa objectForKey:@"id"];
        self.labelLocalidade.text = [dicionarioPessoa objectForKey:@"locale"];
        self.labelNome.text = [dicionarioPessoa objectForKey:@"name"];
        
        
        
    }];
    
    
    
    
    [self.textFieldNomeUsuario resignFirstResponder];
    
}
@end
