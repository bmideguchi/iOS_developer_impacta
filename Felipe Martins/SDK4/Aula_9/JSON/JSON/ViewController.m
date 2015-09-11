//
//  ViewController.m
//  JSON
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
	
    // JSON - > É um formato de arquivos de texto com estrutura muito mais simples (malandra) do que a de seu "irmão mais velho" XML. Este novo conceito de estrutura facilita sua interpretação, redação e transmissão. E por este motivo vem se tornando bem popular
    
    
    // Criando o caminho até nosso arquivo
    NSString *pathArquivo = [[NSBundle mainBundle]pathForResource:@"arquivo" ofType:@"json"];
    
    // Criando um objeto da classe que trata de dados binários
    NSData *binarioJson = [[NSData alloc]initWithContentsOfFile:pathArquivo];
    
    
    // Criando um objeto de erro
    NSError *erro;
    
    
    // Criando um array para armazenar os dados contidos em nosso documento de JSON, a partir da classe responsável pelo trabalho com a estrutura JSON
    NSArray *arrayDados = [NSJSONSerialization JSONObjectWithData:binarioJson options:kNilOptions error:&erro];
    
    // Verificando se o erro ocorreu
    if (erro) {
        // Caso tenha ocorrido o erro
        
        // mostramos o mesmo
        NSLog(@"Erro: %@", [erro localizedDescription]);
    }else{
        // Caso não tenha ocorrido nenhum erro
        
        // Damos um log em nosso array
        
        NSLog(@"%@", arrayDados);
    
    
    
    }
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
