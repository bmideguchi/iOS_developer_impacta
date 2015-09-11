//
//  BebidasViewController.m
//  DesafioCardapio
//
//  Created by Felipe Martins on 19/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "BebidasViewController.h"

@interface BebidasViewController ()

@end

@implementation BebidasViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.arrayBebidas = @[@"Coca Cola", @"Guaraná", @"Suco de Maracujá", @"Refresco de Tamarindo", @"Toddynho Meio Amargo"];
    
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
    return self.arrayBebidas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    cell.textLabel.text = [self.arrayBebidas objectAtIndex:indexPath.row];

    // Desta forma nossa tableView fica apenas como uma "Amostra";
    
    cell.userInteractionEnabled = NO;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
