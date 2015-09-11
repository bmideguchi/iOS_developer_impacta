//
//  ViewController.m
//  JSon
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
	// Do any additional setup after loading the view, typically from a nib.
    
    //JSON é um formato de arquivos de texto com estrutura muito mais simples que a de xml. Este novo conceito de estrutura facilita sua interpretação.
    //Criando o caminho até o arquivo
    NSString *pathArquivo = [[NSBundle mainBundle]pathForResource:@"arquivo" ofType:@"json"];
    
    //Criando um objeto de erro - opcional
    NSError *erro;
    
    //Criando um objeto da classe que trata de dados binários
    NSData *binarioJson = [[NSData alloc]initWithContentsOfFile:pathArquivo];
    
    //Criamos um array para armazenar os dados contidos em nosso documento de JSON, a partir da classe responsável pelo trabalho com a estrutura JSON
    NSArray *arrayDados = [NSJSONSerialization JSONObjectWithData:binarioJson options:kNilOptions error:&erro];
    
    //Verificamos se o erro ocorreu
    if (erro) {
        NSLog(@"erro: %@", [erro localizedDescription]);
    }else{
        NSLog(@"%@", arrayDados);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
