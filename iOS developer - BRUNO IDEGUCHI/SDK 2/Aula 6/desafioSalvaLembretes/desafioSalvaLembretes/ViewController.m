//
//  ViewController.m
//  desafioSalvaLembretes
//
//  Created by NoiteA on 08/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

#define HOME NSHomeDirectory()
#define DOCUMENTS [HOME stringByAppendingPathComponent:@"Documents"]
#define PATH_ARQUIVO [DOCUMENTS stringByAppendingPathComponent:@"mutableArrayLembretes.plist"]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    /*Início dos métodos do viewDidLoad*/
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@", DOCUMENTS);
    
    
    /*Processos básicos*/
    
    //Ligando o text field no delegate
    self.textViewInsereLembrete.delegate = self;
    
    //Iniciando e alocando o mutableArray
    self.mutableArrayLembretes = [[NSMutableArray alloc]init];
    
    //Impedindo o textView de ser alterado pelo usuário:
    self.textViewVerLembretes.editable = NO;
    
    
    
    /*Processos do gerenciador de arquivos*/
    
    //Criando um gerenciador de arquivo
    NSFileManager *gerenciador = [NSFileManager defaultManager];
    
    //Verificando se o arquivo gravado em disco ja existe:
    if ([gerenciador fileExistsAtPath:PATH_ARQUIVO]) {
        
        //Iniciamos o array com os dados salvos
        self.mutableArrayLembretes = [[NSMutableArray alloc]initWithContentsOfFile:PATH_ARQUIVO];
        
        //Mostramos em nossa textView os dados salvos
        self.textViewVerLembretes.text = [self.mutableArrayLembretes componentsJoinedByString:@"\n\n"];
        
    }
    
    else{
        self.textViewVerLembretes.text = @"Não há lembretes salvos";
    }
    
    /*Fim dos métodos do viewDidLoad*/
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Minhas ações
- (IBAction)inserirLembrete:(UITextField *)sender {
    
    
    
}



#pragma mark - ações de text field delegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if (self.textViewInsereLembrete.text.length > 0) {
        
        //Caso haja texto, adicionar a string dado com o texto digitado
        NSString *dado = [NSString stringWithFormat:@"%@", self.textViewInsereLembrete.text];
        
        //Armazenando no array
        [self.mutableArrayLembretes addObject:dado];
        
        //Gravamos o array
        [self.mutableArrayLembretes writeToFile:PATH_ARQUIVO atomically:YES];

        //Mostramos os componentes do array separados por quebra de linha na nossa textView
        self.textViewVerLembretes.text = [self.mutableArrayLembretes componentsJoinedByString:@"\n\n"];
        
        //Limpando o texto de nossa textField:
        self.textViewInsereLembrete.text = nil;
        
        
    }
    
    
    
    return YES;
    
}


@end
