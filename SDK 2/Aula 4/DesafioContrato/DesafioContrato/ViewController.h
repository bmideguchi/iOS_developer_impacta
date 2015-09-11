//
//  ViewController.h
//  DesafioContrato
//
//  Created by Felipe Martins on 05/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

// Importamos o UITextFieldDelegate
@interface ViewController : UIViewController <UITextFieldDelegate>

// Outlets das nossas textFields
@property (weak, nonatomic) IBOutlet UITextField *textFieldNome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldRG;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCidade;

@end
