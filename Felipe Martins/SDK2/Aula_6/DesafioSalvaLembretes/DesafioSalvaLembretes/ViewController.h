//
//  ViewController.h
//  DesafioSalvaLembretes
//
//  Created by Felipe Martins on 10/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

// Chamando o UITextFieldDelegate
@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFieldNovoLembrete;
@property (weak, nonatomic) IBOutlet UITextView *textViewMostraLembretes;



@property (nonatomic,strong) NSMutableArray *arrayLembretes;

@end
