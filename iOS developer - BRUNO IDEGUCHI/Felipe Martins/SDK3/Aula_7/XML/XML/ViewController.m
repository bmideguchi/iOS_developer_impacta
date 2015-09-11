//
//  ViewController.m
//  XML
//
//  Created by Felipe Martins on 02/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Criando o caminho até o documento XML
    NSString *pathArquivo = [[NSBundle mainBundle]pathForResource:@"dados" ofType:@"xml"];
    
    // Tranformando o caminho que temos até o XML em uma NSURL
    NSURL *urlArquivo = [[NSURL alloc]initFileURLWithPath:pathArquivo];
    
    
    // Criando um objeto que fará o parse (interpretação) do nosso XML. A classe responsável por esta interpretação é a NSXMLParser
    NSXMLParser *meuXmlParser = [[NSXMLParser alloc]initWithContentsOfURL:urlArquivo];
    
    // ligando o delegate no objeto
    meuXmlParser.delegate = self;
    
    // acionando o método que inicia o processo de interpretação do XML
    
    [meuXmlParser parse];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Métodos de NSXMLParserDelegate

// Método disparado quando o parser é iniciado
-(void)parserDidStartDocument:(NSXMLParser *)parser{

    NSLog(@"Começando a interpretar o arquivo");
    
}

// Método que é disparado quando o arquivo termina de ser parseado
-(void)parserDidEndDocument:(NSXMLParser *)parser{
    
    
    NSLog(@"Acabou o parse de arquivo");
    
    NSLog(@"%@", self.arrayPessoas);
    
    
    // Criando vaiáveis para o espacamento e altura
    
    int espacamento = 10;
    int alturaLabel = 20;
    
    // Criamos as labels dinamicamente via código de acordo com a quantidade de itens no arrayPessoas
    
    // isso faz com que qualquer alteração no XML gere também uma alteração na minha inteface.
    
    for (int i = 0; i < self.arrayPessoas.count; i++) {
        
        UILabel *labelNomes = [[UILabel alloc]initWithFrame:CGRectMake(50, 30 + ((alturaLabel +espacamento) * i), 100, alturaLabel)];
        
        labelNomes.backgroundColor = [UIColor grayColor];
        labelNomes.text = [[self.arrayPessoas objectAtIndex:i]objectForKey:@"nome"];
        [self.view addSubview:labelNomes];
        
        //
        
        
        UILabel *labelIdade = [[UILabel alloc]initWithFrame:CGRectMake(155, 30 + ((alturaLabel + espacamento)*i), 100, alturaLabel)];
        
        labelIdade.backgroundColor = [UIColor orangeColor];
        labelIdade.text = [[self.arrayPessoas objectAtIndex:i]objectForKey:@"idade"];
        
        [self.view addSubview:labelIdade];
        
        
        
        
    }
    
    
}



// Método disparado quando o parser encontra uma abertura de tag
-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{

    NSLog(@"Abertura de tag: %@", elementName);
    
    
    // Caso a tag que está sendo aberta se a "pessoas". (tag raiz)
    if ([elementName isEqualToString:@"pessoas"]) {
        // Alocamos e iniciamos nosso array
        self.arrayPessoas = [[NSMutableArray alloc]init];
        
    }
    
    
    // Caso a abertura seja da tag "aluno" (nó filho) iniciamos nosso dicionário.
    if ([elementName isEqualToString:@"aluno"]) {
    
        // Alocamos e iniciamos nosso dicionario
        self.dicionarioAluno = [[NSMutableDictionary alloc]init];
        
        
    }
    
    
    // Caso nossa tag seja uma tag de conteúdo, iniciamos a string e guardadmo a tag
    
    if ([elementName isEqualToString:@"nome"] || [elementName isEqualToString:@"idade"]) {
        
        
        //Guardamos a tag atual e iniciamos nossa mutableString que armazena o conteúdo da tag
        
        self.tagAtual = elementName;
        self.conteudoTag = [[NSMutableString alloc]init];
        
    }
    
    
    
    


}

// Método disparado quando o parser encontra um fechamento de tag
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{


    NSLog(@"Fechamento de tag: %@", elementName);
    
    
    
    // Caso o fechamento ocorra em uma tag de conteúdo (nome, idade), amazenamos o texto encontrado
    
    
    if ([self.tagAtual isEqualToString:@"nome"]) {
        
        // Criamos uma chave em nosso dicionário e adicionamos o conteúdo encontrado
        
        [self.dicionarioAluno setObject:self.conteudoTag forKey:@"nome"];
        
        
        // Limpamos as variáveis de controle
        self.conteudoTag = nil;
        self.tagAtual = nil;
        
    }
    
    
    
    if ([self.tagAtual isEqualToString:@"idade"]) {
        
        // Criamos uma chave "idade" para nosso dicionário e adicionamos o conteúdo encontrado
        
        [self.dicionarioAluno setObject:self.conteudoTag forKey:@"idade"];
        
        // Limpamos as variáveis de controle
        
        self.conteudoTag = nil;
        self.tagAtual = nil;
        
    }

    // Caso o parser chegou ao final da tag aluno, logo nosso dicionário já está preenchido então guardamos o mesmo em nosso array
    
    if ([elementName isEqualToString:@"aluno"]) {
        
        [self.arrayPessoas addObject:self.dicionarioAluno];
        
    }
    

}


// Método disparado quando o parser encontra conteúdo dentro de uma tag
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{


    NSLog(@"Encontrei conteúdo: %@", string);
    
    // Tratando o conteúdo da tag, para que não tenhamos problemas com acentuação. Toda vez que encontramos o conteúdo das tags desejadas (nome e idade). Concatenamos o conteúdo
    
    if ([self.tagAtual isEqualToString:@"nome"] || [self.tagAtual isEqualToString:@"idade"]) {
        
        
        
        [self.conteudoTag appendString:string];
        
    }
    
    

}




@end
