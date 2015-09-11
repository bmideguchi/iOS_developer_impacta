//
//  ViewController.h
//  desafioLocalNotification
//
//  Created by NoiteA on 16/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *meuPickerView;
@property (weak, nonatomic) IBOutlet UITextField *textFieldDigiteTexto;

- (IBAction)buttonAtivar:(UIButton *)sender;

@property (strong, nonatomic) NSMutableArray *dadosComponent0;
@property (strong, nonatomic) NSMutableArray *dadosComponent1;

@property (strong, nonatomic) NSString *stringQueArmazenaRow;

@property (assign, nonatomic) NSTimeInterval *minuto;

@property NSUInteger horas;
@property NSUInteger minutos;

@end
