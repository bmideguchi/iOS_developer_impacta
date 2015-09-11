//
//  ViewController.h
//  desafioSalvaLembretes
//
//  Created by NoiteA on 08/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController  <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textViewInsereLembrete;

- (IBAction)inserirLembrete:(UITextField *)sender;

@property (weak, nonatomic) IBOutlet UITextView *textViewVerLembretes;

//Declaração do dicionário
@property (strong, nonatomic) NSMutableDictionary *dicionarioLembretes;

//Declaração da mutable array
@property (strong, nonatomic) NSMutableArray *mutableArrayLembretes;




@end
