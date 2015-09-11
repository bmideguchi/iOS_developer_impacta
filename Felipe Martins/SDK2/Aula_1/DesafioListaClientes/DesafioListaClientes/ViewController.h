//
//  ViewController.h
//  DesafioListaClientes
//
//  Created by Felipe Martins on 28/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textfieldNome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldSobrenome;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityUnico;
@property (weak, nonatomic) IBOutlet UITextView *textViewDados;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *botaoVoltar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *botaoProsseguir;


//

@property (nonatomic, assign) int contador;
@property (nonatomic, strong) NSMutableArray *arrayDados;

//

- (IBAction)criarNovo:(UIBarButtonItem *)sender;

- (IBAction)voltar:(UIBarButtonItem *)sender;

- (IBAction)prosseguir:(UIBarButtonItem *)sender;



//


-(void)travar;
-(void)destravar;



@end
