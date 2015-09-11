//
//  TabelaViewController.m
//  tableViewEstatica
//
//  Created by NoiteA on 17/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
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

//Quando utilizarmos tabela estática, deletar todos os metodos do #pragma mark - Table view data source:
#pragma mark - Table view data source

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
