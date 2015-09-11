//
//  ViewController.h
//  MessageUI
//
//  Created by Felipe Martins on 12/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

// Importando o Framework ao projeto
#import <MessageUI/MessageUI.h>

// Importando os delegates
@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate>


- (IBAction)enviarEmail:(UIButton *)sender;
- (IBAction)enviarMensagem:(UIButton *)sender;

@end
