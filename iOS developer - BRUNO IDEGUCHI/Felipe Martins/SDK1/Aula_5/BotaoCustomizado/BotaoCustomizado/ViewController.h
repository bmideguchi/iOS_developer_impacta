//
//  ViewController.h
//  BotaoCustomizado
//
//  Created by Felipe Martins on 10/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIButton *botaoCustomizado;

- (IBAction)clicarBotaoCustomizado:(UIButton *)sender;

@end
