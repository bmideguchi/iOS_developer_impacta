//
//  tabelaViewController.m
//  desfioCardapio
//
//  Created by NoiteA on 19/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "tabelaViewController.h"

@interface tabelaViewController ()

@end

@implementation tabelaViewController

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

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    switch (section) {
        case 0:
            return @"Pratos";
            break;
            
        case 1:
            return @"Bebidas";
            break;
            
        case 2:
            return @"Sobremesa";
            break;
            
        default:
            return 0;
            break;
    }
}

#pragma mark - Table view data source

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

@end
