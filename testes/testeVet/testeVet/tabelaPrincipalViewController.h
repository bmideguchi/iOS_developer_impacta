//
//  tabelaPrincipalViewController.h
//  testeVet
//
//  Created by NoiteA on 31/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tabelaPrincipalViewController : UITableViewController

@property (strong, retain) NSMutableArray *mutableArrayListaAnimais;

- (IBAction)adicionarNovoAnimal:(UIBarButtonItem *)sender;
@end
