//
//  ViewController.h
//  NSXMLParser
//
//  Created by NoiteA on 02/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSXMLParserDelegate>

//Array que armazenará todos os registros do XML
@property (nonatomic, strong) NSMutableArray *arrayPessoas;

//Dictionary que representará cada aluno (Armazenará nome e idade)
@property (nonatomic, strong) NSMutableDictionary *dicionarioAluno;

//String que armazenará a tag atual
@property (nonatomic, strong)NSString *tagAtual;

//String que armazenará o texto das tags de conteúdo
@property (nonatomic, strong)NSMutableString *conteudoTag;

@end
