//
//  ViewController.h
//  UITextView
//
//  Created by Felipe Martins on 07/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>


// Para termos acesso aos métodos que retornam as interações com nosso objeto, devemos incluir o protocolo de UITextViewDelegate

@interface ViewController : UIViewController <UITextViewDelegate>

/* UTextView é um elemento de tela que exibe uma área editável com multiplas linhas que tem barra de rolagem nativa
 
 
 */

@property (retain, nonatomic) IBOutlet UITextView *texViewCadastro;

- (IBAction)mostrarCadastro:(UIButton *)sender;
@end
