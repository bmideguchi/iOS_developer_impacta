//
//  ViewController.h
//  UITextField
//
//  Created by Felipe Martins on 07/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

// Inserindo o protocolo de Delegate ao projeto
// O mesmo é inserido da seguinte forma: @interface ViewController : UIViewController <DELEGATE1, DELEGATE2>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (retain, nonatomic) IBOutlet UITextField *textFieldUnica;

/* Uma textField é um objeto de interface que permite realizar a entrada de pequenos textos. por padrão ao clicarmos em uma caixa de texto o teclado é habilitado para entrada de dados
 
 
 */


/* Mas como faço para o teclado sair clicando no return? Aí que entra em cena o nosso delegate.
 
 O delegate é reponsável por nos fornecer métodos que são acionados quando há uma interação externa com o objeto a qual responsável. Para termos acesso a estes métodos temos obrigatóriamente que acrescentar seu Protocolo ao nosso projeto
 
 
 
 
 */


@property (retain, nonatomic) IBOutlet UILabel *labelTexto;
- (IBAction)atualizarLabel:(UIButton *)sender;

@end
