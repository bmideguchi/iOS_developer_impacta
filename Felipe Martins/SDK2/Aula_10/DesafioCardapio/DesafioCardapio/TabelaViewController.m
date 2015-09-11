//
//  TabelaViewController.m
//  DesafioCardapio
//
//  Created by Felipe Martins on 19/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "TabelaViewController.h"

@interface TabelaViewController ()

@end

@implementation TabelaViewController

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

   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Como stamos trabalhando com uma tabela estatica, Apagamos os métodos de datasource, para que eles não sobreponham o que fizemos no strotyboard
#pragma mark - Table view data source


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  
}

@end
