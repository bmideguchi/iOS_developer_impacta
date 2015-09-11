//
//  ViewController.h
//  DesafioMultiprocessamento
//
//  Created by Felipe Martins on 31/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldNumero;
@property (weak, nonatomic) IBOutlet UITextView *textViewTabuada;

//

- (IBAction)iniciar:(UIButton *)sender;

@end
