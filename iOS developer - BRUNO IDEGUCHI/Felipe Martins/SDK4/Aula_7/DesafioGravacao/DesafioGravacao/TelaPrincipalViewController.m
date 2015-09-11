//
//  TelaPrincipalViewController.m
//  DesafioGravacao
//
//  Created by Felipe Martins on 28/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "TelaPrincipalViewController.h"

@interface TelaPrincipalViewController ()

@end

@implementation TelaPrincipalViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    // Verificando se o usuário clicou na Section correta
    if (indexPath.section == 2) {
        // Caso seja realmente a section correspondente
        
        
        // Criamos um gerenciador de arquivos
        NSFileManager *gerenciadorArquivos = [NSFileManager defaultManager];
        
        // Verificando se o arquivo com as informações das gravações existe
        if ([gerenciadorArquivos fileExistsAtPath:PATH_ARQUIVO]) {
            
            // caso exista
            
            
            // Criamos um array a partir das informações salva em disco
            
            self.arrayDadosGravacoes = [[NSArray alloc]initWithContentsOfFile:PATH_ARQUIVO];
            
            // dando um log
            NSLog(@"%@", self.arrayDadosGravacoes);
            
        }else{
            // caso o arquivo não exista
        
            // Iniciamos nosso array
            self.arrayDadosGravacoes = [[NSArray alloc]init];
        
        
        }
        
        
        
        
        // Neste ponto nosso array já está iniciado
        
    
        // Verificando se o arquivo está vazio
        if (self.arrayDadosGravacoes.count == 0) {
            // Caso esteja vazio alertamos o usuário de que não há arquivos para serem apagados
            
            UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Alerta" message:@"Não há gravações para apagar" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
            
            // mostrando o alerta
            [alerta show];
            
        }else{
            // Caso o array.count não esteja igual a zero, quer dizer que há itens para serem apagado
        
            // Neste caso criamos o nosso actionSheet
            
            
            UIActionSheet *meuActionSheet = [[UIActionSheet alloc]initWithTitle:@"Deseja realmente excluir todos os itens ?" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:@"Apagar" otherButtonTitles:nil, nil];
        
        
            // Mostrando o actionSheet
            [meuActionSheet showInView:self.view];
        
        }
        
        
        
        
        
        
        
    }
    
    
}




#pragma mark - Métodos de UIActionSheetDelegate



-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{


    // Verificamos se o usuário clicou no destructive button
    if (buttonIndex == 0) {
        // Caso sim, é que ele realmente deseja apagar
        
        
        // Criamos um gerenciador de arquivos
        NSFileManager *gerenciadorArquivos = [NSFileManager defaultManager];
        
        // Baseando nosso array com as informações criamos um FOR que percorra todo o array.
        
        for (int i = 0; i < self.arrayDadosGravacoes.count; i++) {
            
            // Apagamos as gravações
            [gerenciadorArquivos removeItemAtPath:[[self.arrayDadosGravacoes objectAtIndex:i] objectForKey:@"path"] error:nil];
            
            
        }
        
        // Em seguida apagamos op arquivo que armazena as informações (já que não temos mais gravações não precisamos dele)
        
        [gerenciadorArquivos removeItemAtPath:PATH_ARQUIVO error:nil];
        
        
        // Mostramos uma alertView avisando que os arquivos foram apagados
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Aviso" message:@"Todos os arquivos foram apagados com sucesso" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        
        // mostramos o alerta
        [alerta show];
        
        
    }
    
    



}


@end
