//
//  ViewController.h
//  primeiroApp
//
//  Created by NoiteA on 29/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

/*
 
 =====================| VIEW CONTROLLER |=====================
 
 É o documento que lida diretamente com o controle de interface de nosso App.
 
*/

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


/*
 
 =====================| IBOutlet |=====================
 
 Quando trabalhamos com properties que referenciam a objetos de interface precisamos utilizar o
 prefixo IBOutlet para que tenhamos acesso a ligação do mesmo.

*/

@property (nonatomic, retain) IBOutlet UILabel *labelNome;



/*
 
 =====================| IBAction |=====================
 
 Quando precisamos que um método seja disparado devido a um evento de interação do usuário em tela 
 criamos uma referência IBAction para que possamos ligá-lo ao objeto.
 
 */

-(IBAction)clicarBotao:(id)sender;

@end
