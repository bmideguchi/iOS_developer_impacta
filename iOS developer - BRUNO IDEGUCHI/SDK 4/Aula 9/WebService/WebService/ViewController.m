//
//  ViewController.m
//  WebService
//
//  Created by NoiteA on 30/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//graph.facebook.com/NOMEDOUSUARIO
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pesquisar:(UIButton *)sender {
    /*Método 1
    //Criando o path para o webService
    NSString *pathWebService = @"http://graph.facebook.com/";
    
    //Concatenar o que foi digitado
    pathWebService = [pathWebService stringByAppendingString:self.textFieldNomeUsuario.text];
    
    //Criando um URL a partir de um path
    NSURL *urlWebService = [[NSURL alloc]initWithString:pathWebService];
    
    //Criando um objeto da classe responsável por dados binários
    NSData *dadosWebService = [[NSData alloc]initWithContentsOfURL:urlWebService];
    
    //Criando um dicionário para receber os dados do JSON (foi projetado com dicionario - observar o ˜{}˜)
    NSDictionary *dicionarioPessoa = [NSJSONSerialization JSONObjectWithData:dadosWebService options:kNilOptions error:nil];

    //Mostrando os dados recebidos
    NSLog(@"%@", dicionarioPessoa);
    
    self.labelSexo.text = [dicionarioPessoa objectForKey:@"gender"];
    self.labelID.text = [dicionarioPessoa objectForKey:@"id"];
    self.labelLocalidade.text = [dicionarioPessoa objectForKey:@"locale"];
    self.labelNome.text = [dicionarioPessoa objectForKey:@"name"];
    */
    
    //=================================//
    //Método 2
    
    //Criando o path para o webService
    NSString *pathWebService = @"http://graph.facebook.com/";
    
    //Concatenar o que foi digitado
    pathWebService = [pathWebService stringByAppendingString:self.textFieldNomeUsuario.text];
    
    //Criando um URL a partir de um path
    NSURL *urlWebService = [[NSURL alloc]initWithString:pathWebService];
    
    //Criando uma request
    NSURLRequest *request = [NSURLRequest requestWithURL:urlWebService];
    
    //Enviando uma requisicao assíncrona
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *resposta, NSData *dados, NSError *erro) {
        //Criando o dicionario a partir do JSON
        NSDictionary *dicionarioPessoa = [NSJSONSerialization JSONObjectWithData:dados options:kNilOptions error:nil];
        
        self.labelSexo.text = [dicionarioPessoa objectForKey:@"gender"];
        self.labelID.text = [dicionarioPessoa objectForKey:@"id"];
        self.labelLocalidade.text = [dicionarioPessoa objectForKey:@"locale"];
        self.labelNome.text = [dicionarioPessoa objectForKey:@"name"];
    }];
    
}
@end
