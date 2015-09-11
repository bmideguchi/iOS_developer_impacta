//
//  ListaGravacoesViewController.m
//  DesafioGravacao
//
//  Created by Felipe Martins on 28/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ListaGravacoesViewController.h"
//Importando a tela de reprodução
#import "ReproducaoViewController.h"

@interface ListaGravacoesViewController ()

@end

@implementation ListaGravacoesViewController



- (void)viewDidLoad
{
    [super viewDidLoad];

   // Criando um objeto gerenciador de arquivos
    NSFileManager *gerenciadorArquivos = [NSFileManager defaultManager];
    
    // Vericando se o arquivo existe
    if ([gerenciadorArquivos fileExistsAtPath:PATH_ARQUIVO]) {
        // caso ele exista
        
        // Iniciamos o array a partir deste arquivo
        self.listaGravacoes = [NSArray arrayWithContentsOfFile:PATH_ARQUIVO];
        
    }else{
        // caso não exista
    
        // Criamos o alerta para avisar o usuário que não há gravações salvas
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Alerta" message:@"Não há gravações salvas! Você pode criar uma nova gravação na tela proncipal" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    
        [alerta show];
    
    }
    
    
    
    
    
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
    
    // Como queremos uma única section, retornamos 1.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    // Retornamos o count do array, ou seja, a quantidade de gravações
    return self.listaGravacoes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    
    NSDictionary *gravacao = [self.listaGravacoes objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [gravacao objectForKey:@"nome"];
    
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    

// Iniciamos nosso dicionario com as informações da gravação
    NSDictionary *gravacao = [self.listaGravacoes objectAtIndex:indexPath.row];
    
    // executamos o segue passando o dicionário de gravações pelo sender
    
    [self performSegueWithIdentifier:@"segueTelaReproducao" sender:gravacao];


}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    // verificando qual o segue esta sendo disparado
    if ([segue.identifier isEqualToString:@"segueTelaReproducao"]) {
        
        // Criamos nossa ligação com a tela de destino
    
        ReproducaoViewController *telaReproducao = (ReproducaoViewController *)segue.destinationViewController;
        
        // Passando os dados
        telaReproducao.dicionarioInfoAudio = sender;
    }



}




@end
