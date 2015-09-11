//
//  PratosViewController.m
//  DesafioCardapio
//
//  Created by Felipe Martins on 19/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "PratosViewController.h"

@interface PratosViewController ()

@end

@implementation PratosViewController



- (void)viewDidLoad
{
    [super viewDidLoad];

 
    // Iniciando o nosso array
    self.arrayPratos = @[@"Feijão Tropeiro", @"Ovo Frito", @"Frango a Passarinho", @"Bife com Fritas"];
 
    
    
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
    return self.arrayPratos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    // Verificamos se a célula já esta em memó,ria
    if (cell == nil) {
        // Caso não esteja
        
        // Allocamos e iniciamos nossa célula
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    // Depois de termos certeza que a célula foi iniciada damos um título a ela para cada linha baseamos um item do array que contém os pratos
    
    cell.textLabel.text = [self.arrayPratos objectAtIndex:indexPath.row];
    
    
    // Cancelamos a interação com a celula para que o usuário não possa selecionar.
    // Desta forma nossa tableView fica apenas como uma "Amostra";
    
    cell.userInteractionEnabled = NO;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   
}

@end
