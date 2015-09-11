//
//  ViewController.h
//  AplicativoUniversal
//
//  Created by Felipe Martins on 23/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldNome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldSobrenome;

@property (weak, nonatomic) IBOutlet UITextField *textFieldEmail;

@property (weak, nonatomic) IBOutlet UITextView *textViewUnica;


//


- (IBAction)mostrarInformacoes:(UIButton *)sender;




// Exclusivo do iPad

@property (weak, nonatomic) IBOutlet UITextView *textViewiPad;





@end
