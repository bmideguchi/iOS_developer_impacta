//
//  ViewController.h
//  UIWebView
//
//  Created by NoiteA on 15/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Outlet para webview
@property (weak, nonatomic) IBOutlet UIWebView *minhaWebView;

//Action para os botoes
- (IBAction)carregar:(UIButton *)sender;

- (IBAction)voltar:(UIButton *)sender;
- (IBAction)avancar:(UIButton *)sender;

@end
