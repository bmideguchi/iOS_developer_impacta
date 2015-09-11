//
//  TelaVideoViewController.m
//  DesafioMediaPlayer
//
//  Created by Felipe Martins on 14/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "TelaVideoViewController.h"

@interface TelaVideoViewController ()

@end

@implementation TelaVideoViewController

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
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    // Fazendo o IF para verificar se a célula já está alocada
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    
    // Configurando o título da célula
    cell.textLabel.text = @"Video Jobs";
    
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    // Criando o caminho até o arquivo (nosso vídeo)
    NSString *pathArquivo = [[NSBundle mainBundle]pathForResource:@"video1" ofType:@"mp4"];
    
    //  Tranformando o path em URL
    NSURL *urlVideo = [[NSURL alloc]initFileURLWithPath:pathArquivo];
    
    // Iniciando o objeto que controlará o vídeo
    MPMoviePlayerViewController *meuPlayer = [[MPMoviePlayerViewController alloc]initWithContentURL:urlVideo];
    
    // Apresentando o player na tela
    
    [self presentMoviePlayerViewControllerAnimated:meuPlayer];
    
    
    
}

@end
