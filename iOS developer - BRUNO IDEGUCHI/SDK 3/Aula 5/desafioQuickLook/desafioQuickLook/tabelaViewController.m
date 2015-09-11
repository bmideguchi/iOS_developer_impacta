//
//  tabelaViewController.m
//  desafioQuickLook
//
//  Created by NoiteA on 29/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "tabelaViewController.h"

@interface tabelaViewController ()

@end

@implementation tabelaViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.arrayPDFs = [[NSMutableArray alloc]initWithObjects:@"Ambiente Mac OS", @"Introdução a Lógica de Programação", @"Introdução a Programação Orientada a Objeto", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.arrayPDFs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [self.arrayPDFs objectAtIndex:indexPath.row];
    
    cell.textLabel.font = [UIFont fontWithName:@"Arial" size:14.0];
    
    return cell;
}





#pragma mark - Table view delegate

//Método que roda quando o usuário escolhe uma célula na tableView
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Quando o usuário escolher a célula criamos o quickLook
    QLPreviewController *quickLook = [[QLPreviewController alloc]init];
    
    //Ligando o delegate e o dataSource
    quickLook.delegate = self;
    quickLook.dataSource = self;
    
    //Apresentando o quickLook em tela
    [self.navigationController pushViewController:quickLook animated:YES];
}

#pragma mark Métodos de QLPreviewControllerDataSource

//Método que define a quantidade de itens que será exibida em nosso visualizador
-(NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller
{
    //Como estamos trabalhando com navigation, retornaremos 1 item
    return 1;
}

-(id<QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index{
    //Resgatando o nome do arquivo a partir da linha selecionada e o objeto contido em nosso array em seu índice correspondente
    NSString *nomeArquivo = [self.arrayPDFs objectAtIndex:self.tableView.indexPathForSelectedRow.row];
    
    //Criando uma string que armazena o caminho do arquivo
    NSString *pathArquivo = [[NSBundle mainBundle]pathForResource:nomeArquivo ofType:@"pdf"];

    //Transformando essa string em um URL
    NSURL *urlArquivo = [[NSURL alloc]initFileURLWithPath:pathArquivo];
    
    //Retornamos a URL ARQUIVO
    return urlArquivo;
}

#pragma mark Métodos de QLPreviewControllerDelegate

-(void)previewControllerWillDismiss:(QLPreviewController *)controller{
    NSLog(@"Saindoooo!");
}

@end
