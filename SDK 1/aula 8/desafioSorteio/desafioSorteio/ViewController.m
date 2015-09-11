//
//  ViewController.m
//  desafioSorteio
//
//  Created by NoiteA on 19/06/13.
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

    //Ligando o text field ao Delegate:
    self.textFieldInsereNome.delegate = self;
    
    //Iniciando e allocando o array que armazena as pessoas
    self.meuMutableArray = [[NSMutableArray alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_textFieldInsereNome release];
    [_buttonSortear release];
    [_buttonApagar release];
    [_labelSorteado release];
    [super dealloc];
}

#pragma mark - minhas ações

- (IBAction)escreverNome:(UITextField *)sender {
    

    //Adicionando nomes ao array

    
    
}

- (IBAction)sortearNome:(UIButton *)sender {
    
    //Caso tenha participantes concorrendo, ele entrará no if
    if (self.meuMutableArray.count > 0){
        
        //Sorteando um número de zero até a quantidade de pessoas no array
        int sorteado = arc4random()%self.meuMutableArray.count;
        
        self.labelSorteado.text = [self.meuMutableArray objectAtIndex:sorteado];
        
    }
    
    else{
        self.labelSorteado.text = @"INSERE ALGUÉM AE!";
    }
    
}

- (IBAction)apagarNome:(UIButton *)sender {
    
    //Apagamos todos os itens do array
    [self.meuMutableArray removeAllObjects];
    
    //Limpamos a label
    self.labelSorteado.text = @"Memória limpa";
}


#pragma mark - métodos de UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if (self.textFieldInsereNome.text.length > 0){
        //Criamos uma variável para receber o texto
        NSString *nome = self.textFieldInsereNome.text;
        
        //Adicionamos a mesma em nosso array
        [self.meuMutableArray addObject:nome];
        
        //Após adicionar o objeto, limpamos a caixa de texto
        self.textFieldInsereNome.text = nil;
        
    }
    
    else{
        self.labelSorteado.text = @"Digite algo!";
    }
        
    return YES;
}


@end
