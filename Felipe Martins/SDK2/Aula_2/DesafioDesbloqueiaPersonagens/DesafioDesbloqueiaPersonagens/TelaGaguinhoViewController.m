//
//  TelaGaguinhoViewController.m
//  DesafioDesbloqueiaPersonagens
//
//  Created by Felipe Martins on 01/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "TelaGaguinhoViewController.h"

@interface TelaGaguinhoViewController ()

@end

@implementation TelaGaguinhoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)voltarTelaPrincipal:(UIButton *)sender {
    
    // Voltando via dismiss para a tela anterior
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
