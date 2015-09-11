//
//  ViewController.m
//  aula6desafio1
//
//  Created by NoiteA on 08/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

#define HOME NSHomeDirectory()
#define DOCUMENTS [HOME stringByAppendingPathComponent:@"Documents"]
#define PATH_ARQUIVO [DOCUMENTS stringByAppendingPathComponent:@"dados.txt"]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSLog(@"%@", DOCUMENTS);
    
    //setando o array com as cores
    self.arrayCores = [[NSArray alloc]initWithObjects:[UIColor whiteColor],[UIColor blackColor],[UIColor blueColor],[UIColor yellowColor], [UIColor greenColor],nil];
    
    //Iniciando uma variável com a cor recuperada
    NSString *escolhaRecuperada = [NSString stringWithContentsOfFile:PATH_ARQUIVO encoding:NSUTF8StringEncoding error:nil];
    
    //Convertendo a string para um inteiro
    self.escolha = [escolhaRecuperada intValue];
    
    //Colocando o bg com a escolha, baseado no array
    self.view.backgroundColor = [self.arrayCores objectAtIndex:self.escolha];
    
    self.segmentedControlCores.selectedSegmentIndex = self.escolha;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentedControlMudarCor:(UISegmentedControl *)sender {
    
    //Iniciando um gerenciador de arquivos
    NSFileManager *gerenciador = [NSFileManager defaultManager];
    
    //Caso o arquivo exista
    if ([gerenciador fileExistsAtPath:PATH_ARQUIVO]) {
        
        //setamos a cor de fundo da tela baseado no índice do array e da seleção
        self.view.backgroundColor = [self.arrayCores objectAtIndex:sender.selectedSegmentIndex];
    }
    
    //Caso a cor nao exista
    else{
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    NSString *stringEscolha = [NSString stringWithFormat:@"%i", sender.selectedSegmentIndex];
    
    [stringEscolha writeToFile:PATH_ARQUIVO atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
}
@end
