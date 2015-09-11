//
//  Tela3ViewController.h
//  UITabBarController
//
//  Created by Felipe Martins on 01/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Tela3ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelSelecao;
- (IBAction)alterarSegmented:(UISegmentedControl *)sender;

@end
