//
//  ViewController.m
//  DesafioTabuadaSegmented
//
//  Created by Felipe Martins on 05/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Método disparado quando o segmented é alterado
- (IBAction)alterarSegmented:(UISegmentedControl *)sender {
    
    // Criando uma variávelque receberá o indice selecionado
    NSInteger indice = sender.selectedSegmentIndex;
    
    // Criando o for que gerará nossa tabuada
    for (int i = 1; i <= 10; i++) {
        
        // Exibindo nossa tabuada
        NSLog(@"%i X %i = %i",(indice+1), i, (indice + 1)*i);
        
    }
    // NSLog(), somente para quebrar linha
    NSLog(@"\n");
    
}
@end
