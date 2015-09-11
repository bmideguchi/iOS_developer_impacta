//
//  ViewController.h
//  UIToolbar
//
//  Created by Felipe Martins on 21/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>


/* UIToolbar
 
 Toolbar é nada mais do que uma barra de feramentas. Normalmente usada para agrupar botões de uma maneira organizada
 
 Espaçadores:
 
    -FlexibleSpace - Espaço flexível que calcula automaticamente uma distância proporcional entre os elementos da toolbar.
 
    -FixedSpace - Espaço fixo que mantém uma distância fixa entre os objetos.
 
 
 */


@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UITextView *textViewLetra;

- (IBAction)voltar:(UIBarButtonItem *)sender;
- (IBAction)play:(UIBarButtonItem *)sender;
- (IBAction)avancar:(UIBarButtonItem *)sender;

@end
