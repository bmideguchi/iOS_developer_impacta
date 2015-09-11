//
//  ViewController.h
//  DesafioMiniNavegador
//
//  Created by Felipe Martins on 17/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

// Incluimos os delegates dos objetos
@interface ViewController : UIViewController <UIWebViewDelegate, UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityCarregamento;
@property (weak, nonatomic) IBOutlet UITextField *textFieldEndereco;
@property (weak, nonatomic) IBOutlet UIWebView *webViewSite;


- (IBAction)voltar:(UIBarButtonItem *)sender;
- (IBAction)atualizar:(UIBarButtonItem *)sender;
- (IBAction)avancar:(UIBarButtonItem *)sender;



@end
