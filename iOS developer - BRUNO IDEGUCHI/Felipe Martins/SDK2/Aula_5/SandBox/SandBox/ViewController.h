//
//  ViewController.h
//  SandBox
//
//  Created by Felipe Martins on 05/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>



@property (weak, nonatomic) IBOutlet UITextField *textFieldLembrete;
@property (weak, nonatomic) IBOutlet UITextView *textViewUnica;



// Criando as strings que usaremos para criar os caminhos a nossas pastas

@property (nonatomic, strong) NSString *caminhoParaHome;
@property (nonatomic, strong) NSString *caminhoParaDocuments;
@property (nonatomic, strong) NSString *caminhoParaMeuArquivoSalvo;


// String que será nosso lembrete
@property (nonatomic, strong) NSString *meuLembrete;

//

- (IBAction)exibirLembrete:(UIButton *)sender;

@end
