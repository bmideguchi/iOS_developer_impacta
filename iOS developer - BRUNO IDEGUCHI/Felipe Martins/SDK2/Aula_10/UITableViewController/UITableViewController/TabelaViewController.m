//
//  TabelaViewController.m
//  UITableViewController
//
//  Created by Felipe Martins on 17/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "TabelaViewController.h"

@interface TabelaViewController ()

@end

@implementation TabelaViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.arrayCDs = @[@"Calypso", @"Ahh Lelek Acustico", @"Reginaldo Rossi", @"DaLeste"];
    self.arrayFilmes = @[@"Homem de Ferro", @"Os Vingadores", @"Harry Potter", @"Batman", @"Monstros SA"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

// Método que retorna o número de seções para a TableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    
    // Retornamos 2 pois queremos uma seção para os Cds e outra para os filmes
    return 2;
}



// Retornamos o número de linhas por seção
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    
    // Retornamos a quantidade de itens em cada array para sua determinada seção
    if (section == 0) {
        // Caso estejamos na primeira seção (seção 0).
        
        //retornamos a quantidade de itens no array que contém os Cds.
        
        return self.arrayCDs.count;
        
        
    }else{
        // Caso não estejamos na seção 0 (ou seja, estamos na seção 1, pois só temos 2 seções)
    
    
        return self.arrayFilmes.count;
        
        
    
    }
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"celula";
    
    // Método utilizado normalmente quando criamos celulas personalizadas
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Utilizamos este método quando criamos a célula totalmente via código
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    // Definimos o comportamento da célula
    
    
    // Verificamos se a célula já está em memória
    
    if (cell == nil) {
     
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    // Aqui definimos os parametros restantes
    
    // Definindo o título para a celula
    
    // Para retornar o título certo para a linha e seção certa, precisamos saber em qual linha e seção estamos. Para isto em nosso caso usaremos o indexPath.
    // O indexPath é um tipo de dados que contém tanto a linha quanto a seção.
    
    
    // Verificamos em qual seção estamos
    if (indexPath.section == 0) {
        // Caso estejamos na 0
        
        
        // O texto de nossa célula recebe um item do nosso array de Cds para cada celula
        cell.textLabel.text = [self.arrayCDs objectAtIndex:indexPath.row];
    
    }else{
        // Caso não estejamos na seção 0 (ou seja, estamos na 1 pois só temos 2 seções)
    
    
    
        // Nossa célula recebe como título um item para cada linha do array que contém os filmes
        
        cell.textLabel.text = [self.arrayFilmes objectAtIndex:indexPath.row];
    }
    
    
    
    
    
        // Retornamos nossa célula
    return cell;
}



-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

    switch (section) {
        case 0:
            
            return @"Cds";
            
            break;
        case 1:
            
            return @"Filmes";
            break;
        default:
            
            // Retornamos 0 para que o método seja finalizado.
            return 0;
            break;
    }
    

}


#pragma mark - Table view delegate


// Método que roda sempre que uma célula é selecionada
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Mostrando a linha e a seção selecionada
    NSLog(@"Escolha: %@", indexPath);

}

@end
