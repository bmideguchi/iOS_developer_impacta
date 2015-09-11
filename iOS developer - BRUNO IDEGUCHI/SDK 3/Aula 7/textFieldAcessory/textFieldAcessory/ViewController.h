//
//  ViewController.h
//  textFieldAcessory
//
//  Created by NoiteA on 02/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *minhaTextField;

-(void)voltar;
-(void)avancar;
-(void)done;

@end
