//
//  ViewController.m
//  tableViewEstatica
//
//  Created by NoiteA on 17/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)voltar:(UIButton *)sender {
    //Método para voltar via código
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)irParaTela3:(UIButton *)sender {
    //Executamos um segue via código
    [self performSegueWithIdentifier:@"segueTela3" sender:nil];
}
@end
