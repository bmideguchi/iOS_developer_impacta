//
//  TabelaViewController.m
//  DesafioJSON
//
//  Created by Felipe Martins on 30/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "TabelaViewController.h"
#import "Tela2ViewController.h"

@interface TabelaViewController ()

@end

@implementation TabelaViewController



- (void)viewDidLoad
{
    [super viewDidLoad];

    
    // Crinado um caminho até o arquivo de JSON
    NSString *pathArquivo =[[NSBundle mainBundle] pathForResource:@"dados" ofType:@"json"];
    
    // Ciando um dado binário
    NSData *binarioJson = [[NSData alloc]initWithContentsOfFile:pathArquivo];
    
    // Iniciando o array com o Json
    self.arrayDados = [NSJSONSerialization JSONObjectWithData:binarioJson options:kNilOptions error:nil];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.arrayDados.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    // Configurando o título
    cell.textLabel.text = [[self.arrayDados objectAtIndex:indexPath.row] objectForKey: @"nome"];
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    
    
    [self performSegueWithIdentifier:@"segueTela2" sender:nil];
    
    
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{


    if ([segue.identifier isEqualToString:@"segueTela2"]) {
        
        
        Tela2ViewController *segundaTela = (Tela2ViewController *) segue.destinationViewController;
        
        segundaTela.dicionarioPessoa = [self.arrayDados objectAtIndex:self.tableView.indexPathForSelectedRow.row];
        
        
        
    }



}

@end
