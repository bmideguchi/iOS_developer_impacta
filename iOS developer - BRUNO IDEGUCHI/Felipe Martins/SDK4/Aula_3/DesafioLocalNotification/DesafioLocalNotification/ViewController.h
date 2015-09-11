//
//  ViewController.h
//  DesafioLocalNotification
//
//  Created by Felipe Martins on 16/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UIDatePicker *datePickerUnico;
@property (weak, nonatomic) IBOutlet UITextField *textFieldMensagem;

- (IBAction)ligarNotificacao:(UIButton *)sender;

@end
