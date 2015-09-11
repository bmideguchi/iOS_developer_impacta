

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
	
    // Criando um gerenciador de arquivos
    NSFileManager *gerenciadorArquivos = [NSFileManager defaultManager];
    
    // Dando um NSLog no documents
    NSLog(@"%@", DOCUMENTS);
    
    
    // Verificando se o arquivo existe no endereço
    if ([gerenciadorArquivos fileExistsAtPath:PATH_ARQUIVO]) {
        // caso o banco já exista abrimos o banco
        
        
        if (sqlite3_open([PATH_ARQUIVO UTF8String], &meuBanco) == SQLITE_OK) {
            
            
            NSLog(@"Banco aberto com sucesso!");
            
            
        }        
        
    }else{
        // Caso o banco não exista, criamos o mesmo em disco
        
        // OBS: Usamos o mesmo comando tanto para CRIAR quanto para ABRIR o banco
        
        if (sqlite3_open([PATH_ARQUIVO UTF8String], &meuBanco) == SQLITE_OK) {
            
            
            NSLog(@"Banco Criado com sucesso!");
            
            
        }
        
        
        // Montar o comando que cria uma tabela em nosso banco de dados, lembrando que nosso comando é uma string simples "", (sem o @)
        
        comando = "create table if not exists ALUNOS (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, nome TEXT, idade INTEGER)";
        
        // Função que executa um comando SQLite sem retorno
        
        if (sqlite3_exec(meuBanco, comando, NULL, 0, NULL) == SQLITE_OK) {
            
            NSLog(@"Tabela Criada com sucesso");
            
            
        }else{
            // Caso por algum motivo a tabela não seja criada
            
            // mostramos o erro ocorrido
            
            NSLog(@"Erro ao criar a tabela: %s", sqlite3_errmsg(meuBanco));
            
            
        }

        
        
        
    }
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cadastrar:(UIButton *)sender {
    
    
    if (self.textFieldNome.text.length > 0 && self.textFieldIdade.text.length > 0) {
        
        // Resgatando os valores preenchidos
        NSString *nome = self.textFieldNome.text;
        int idade = [self.textFieldIdade.text intValue];
        
        // Criando o comando que insere dados em um banco de dados
        NSString *query = [NSString stringWithFormat:@"insert into ALUNOS values (NULL, '%@', %i)", nome, idade];
        //               (id, nome, idade)
        
        // executando o comando no banco de dados
        
        if (sqlite3_exec(meuBanco, [query UTF8String], NULL, 0, NULL) == SQLITE_OK) {
            
            
            NSLog(@"Registro adicionado com sucesso!");
            
        }else{
        
            NSLog(@"Erro ao adicionar registro: %s", sqlite3_errmsg(meuBanco));
        
        }
        
        
        
        // Limpamos a textField
    self.textFieldNome.text = nil;
    self.textFieldIdade.text = nil;

// Baixamos o teclado
[self becomeFirstResponder];

        
        
        
        
    }else{
    
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Alerta" message:@"Insira os dados antes de continuar" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        
        [alerta show];
    }
    
    
    
    
    
    
    
    
    
}

- (IBAction)resgatar:(UIButton *)sender {
    
    
    // COmando para retornar todos os registros da tabela
    
    comando = "select *from ALUNOS";
    
    // Variável que armazenará o valor gerado pelo select
    
    sqlite3_stmt *resultado;
    
    // Função que executa um comando no banco que retorna dados
    
    if (sqlite3_prepare_v2(meuBanco, comando, -1, &resultado, NULL) == SQLITE_OK) {
        
        
        
        while (sqlite3_step(resultado) == SQLITE_ROW) {
            
            
            // Resgatando o valor das colunas do reultado
            int codigo = sqlite3_column_int(resultado, 0);
            
            NSString *nome = [NSString stringWithFormat:@"%s", sqlite3_column_text(resultado, 1)];
            
            int idade = sqlite3_column_int(resultado, 2);
            
            // Criando umdicionario que agrupe os valores do registro
            NSDictionary *aluno = @{@"nome": nome, @"id": [NSNumber numberWithInt:codigo], @"idade": [NSNumber numberWithInt:idade]};
            
            NSLog(@"%@", aluno);
            
        }
        
        // tiramos o statmente de memória
        sqlite3_finalize(resultado);
        
        
        
    }else{
    
    
        NSLog(@"Erro: %s", sqlite3_errmsg(meuBanco));
    
    }
    
    
    
    
}

-(BOOL)canBecomeFirstResponder{


    return YES;

}
@end
