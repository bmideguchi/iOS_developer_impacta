//
//  ViewController.h
//  WebService
//
//  Created by NoiteA on 30/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldNomeUsuario;
@property (weak, nonatomic) IBOutlet UILabel *labelID;
@property (weak, nonatomic) IBOutlet UILabel *labelNome;
@property (weak, nonatomic) IBOutlet UILabel *labelLocalidade;
@property (weak, nonatomic) IBOutlet UILabel *labelSexo;

- (IBAction)pesquisar:(UIButton *)sender;

@end
