//
//  ViewController.m
//  SQLite
//
//  Created by NoiteA on 28/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

#define HOME NSHomeDirectory()
#define DOCUMENTS [HOME stringByAppendingPathComponent:@"Documents"]
#define PATH_ARQUIVO [DOCUMENTS stringByAppendingPathComponent:@"cadastros.sqlite"]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Criando um gerenciador de arquivos
    NSFileManager *gerenciadorDeArquivos = [NSFileManager defaultManager];
    
    //Dando um NSLog no documents
    NSLog(@"%@", DOCUMENTS);
    
    //Verificando se o arquivo existe no endereço
    if ([gerenciadorDeArquivos fileExistsAtPath:PATH_ARQUIVO]) {

        //Caso o banco já exista, abrimos o banco
        if (sqlite3_open([PATH_ARQUIVO UTF8String], &meuBanco) == SQLITE_OK){
            NSLog(@"Banco aberto com sucesso!");
        }
    }
    else{
    NSLog(@"Banco criado com sucesso!");
    }
    
    
    //Montar o comando que cria uma tabela em nosso banco de dados, lembrando que nosso comando é uma string simples (sem o @)
    comando = "create table if not exists ALUNOS (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, nome TEXT, idade INTEGER)";
    
    //Função que executa um comando SQLite sem retorno
    if (sqlite3_exec(meuBanco, comando, NULL, 0, NULL) == SQLITE_OK) {
        NSLog(@"Tabela criada com sucesso!");
    }
    
    //Caso por algum motivo a tabela não seja criada, mostramos o erro ocorrido
    else{
        NSLog(@"Erro ao criar a tabela: %s", sqlite3_errmsg(meuBanco));
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonCadastrar:(UIButton *)sender {
    if (self.textFieldNome.text.length > 0 && self.textFieldIdade.text.length > 0) {
        
        NSString *nome = self.textFieldNome.text;
        int idade = [self.textFieldIdade.text intValue];
        
        //Criando o comando que insere dados em um banco de dados
        NSString *query = [NSString stringWithFormat:@"insert into ALUNOS values (NULL, '%@', %i)"];
        //Executando o comando no banco de dados
        if (sqlite3_exec(meuBanco, [query UTF8String], NULL, 0, NULL) == SQLITE_OK) {
            NSLog(@"Registro adicionado com sucesso!");
        }
        else{
            NSLog(@"Erro ao adicionar registro: %s", sqlite3_errmsg(meuBanco));
        }
        
    }
    else{
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Alerta" message:@"Insira os dados" delegate:nil cancelButtonTitle:@"Cancelar" otherButtonTitles:@"OK", nil];
        [alerta show];
    }
}

- (IBAction)buttonResgatar:(UIButton *)sender {
}
@end
