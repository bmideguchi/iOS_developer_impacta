//
//  TableViewController.m
//  UITableViewController
//
//  Created by NoiteA on 17/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.arrayCDs = @[@"Ahh Lelek Acustico", @"Reginaldo Rossi", @"DaLeste"];
    self.arrayFilmes = @[@"Homem de ferro", @"Os Vingadores", @"Harry Potter", @"Batman", @"Monstros SA"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





#pragma mark - Table view data source

//Método que retorna o número de seções para a tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    //Pode ser usado um #warning para se lembrar de algo a ser implementado, declarado d aforma abaixo:
    //#warning Potentially incomplete method implementation.
    
    // Return the number of sections.
    return 2;
}




//Método que retorna o número de linhas por seção
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    
    //Caso estejamos na primeira seção
    if (section == 0) {
        //Retornamos a quantidade de itens no array que contém os CDs
        return self.arrayCDs.count;
    }
    
    //Caso não estejamos na primeira seção, ou seja, estamos na seção de filmes:
    else{
        return self.arrayFilmes.count;
    }
    
}





- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"celula";
    
    //Método utilizado normalmente quando criamos células personalizadas:
    /*UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];*/
    
    //Utilizamos esse método quando criamos a célula totalmente via código:
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    //verificamos se a célula já está em memória
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    //Definindo o título para a célula
    
    //Para retornar o titulo certo para a linha e seção certa, precisamos saber em qual linha e seção estamos. Para isso, em nosso caso usaremos o INDEXPATH. O INDEXPATH é um tipo de dado que contém tanto a linha quanto a seção.
    if (indexPath.section == 0) {
        //O texto de nossa célula reecbe o item do array
        cell.textLabel.text = [self.arrayCDs objectAtIndex:indexPath.row];
    }
    
    else{
        cell.textLabel.text = [self.arrayFilmes objectAtIndex:indexPath.row];
    }
    
    //Retornamos nossa célula
    return cell;
}

//Método que diz o titulo da seção
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    switch (section) {
        case 0:
            return @"CDs";
            break;
        
        case 1:
            return @"Filmes";
            break;
            
        default:
            return 0;
            break;
    }
}





#pragma mark - Table view delegate

//Método que roda sempre que uma célula é selecionada
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Escolha: %@", indexPath);
}

@end
