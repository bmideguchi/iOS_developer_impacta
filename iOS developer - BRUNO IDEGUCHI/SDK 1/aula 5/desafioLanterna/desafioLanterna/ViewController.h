//
//  ViewController.h
//  desafioLanterna
//
//  Created by NoiteA on 10/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UIButton *botaoLanterna;

- (IBAction)ativarBotaoLanterna:(UIButton *)sender;

@end