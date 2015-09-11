//
//  TabelaViewController.m
//  AssetsLibrary
//
//  Created by Felipe Martins on 02/09/13.
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

    // Iniciando o array
    self.arrayListaArquivo = [[NSMutableArray alloc]init];
    // Iniciando o objeto da library
    self.bibliotecaUsuario = [[ALAssetsLibrary alloc]init];
    
    
    // Como o acesso a library pode demorar dependendo da quantidade de arquivos que o usuário possui em seu device usaremos um GCD para evitar que o processo trave a nossa interface
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        // Método que acessa a library do usuário
        [self.bibliotecaUsuario enumerateGroupsWithTypes:ALAssetsGroupSavedPhotos usingBlock:^(ALAssetsGroup *group, BOOL *stop) {
            
            // Verificamos se o grupo não está nulo
            if (group) {
                    // Caso o grupo não esteja nulo
            
                // Utilizamos o método que retorna um resultado para cada item do grupo
                [group enumerateAssetsUsingBlock:^(ALAsset *result, NSUInteger index, BOOL *stop) {
                    
                    // Verificamos se o resultado não veio nulo
                    
                    if (result) {
                        // Caso o resultado não seja nulo
                        
                        // Resgatamos o tipo de arquivo encontrado
                        NSString *tipoArquivo = [result valueForProperty:ALAssetPropertyType];
                        
                            // Verificando se o tipo de arquivo é uma foto
                        if ([tipoArquivo isEqualToString:ALAssetTypePhoto]) {
                                // Caso ele seja uma foto, finalmente salvamos no Array!!!!
                            
                            [self.arrayListaArquivo addObject:result];
                            
                            
                            
                        }
                        
                        
                    }
                    
                    
                    
                }];
                
                // Fora bo bloco de código do group, mostramos o nosso array de fotos
                
                NSLog(@"Fotos: %@", self.arrayListaArquivo);
                
                // Como o nosso "dispatch_async" está sendo executado na global_queue devemos alterar para a main_queue para acessar os objetos de interface
                
                dispatch_async(dispatch_get_main_queue(), ^{
                   
                    // Atualizar a table View
                    
                    [self.tableView reloadData];
                    
                });
                
                
            }
            
            
        } failureBlock:^(NSError *error) {
            
            
            NSLog(@"Erro: %@", error.localizedDescription);
            
        }];/* Fim do bloco de erro*/
        
        
        
        
        
    });// Fim do GCDzão!
    
    
    
    
    
    
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
    
    // Retormamos 1 pois queremos uma única section
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    // Retornamo o count do array
    return self.arrayListaArquivo.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    // Verificando se a célula está nula
    if (cell == nil) {
        // caso a mesma esteja nula
        
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
        
    }
    // Acessando a representação do arquivo que contém o dado salvo
    ALAsset *dadoSalvo = [self.arrayListaArquivo objectAtIndex:indexPath.row];
    
    // Acessando a representação do arquivo que contém seu nome
    cell.textLabel.text = dadoSalvo.defaultRepresentation.filename;
    
    // Criando uma UIImage a partir do ALAsset
    UIImage *imagemMiniatura = [UIImage imageWithCGImage:[dadoSalvo thumbnail]];

    // Exibindo a imagemMiniatura na célula
    cell.imageView.image = imagemMiniatura;
    
    
    return cell;
    
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    // Quando o usuário selecionar uma célula, resgatamos o item escolhido novamente do aray
    ALAsset *arquivo = [self.arrayListaArquivo objectAtIndex:indexPath.row];
    
    // Executamos o segue que leva para nossa outra tela
    [self performSegueWithIdentifier:@"segueTela2" sender:arquivo];


}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{


    if ([segue.identifier isEqualToString:@"segueTela2"]) {
        
        
        Tela2ViewController *segundaTela = (Tela2ViewController *)segue.destinationViewController;
        
        segundaTela.arquivoRecebido = sender;
        
    }



}

@end
