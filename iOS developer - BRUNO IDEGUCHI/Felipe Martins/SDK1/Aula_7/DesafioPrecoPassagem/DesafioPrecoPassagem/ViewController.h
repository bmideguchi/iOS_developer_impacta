//
//  ViewController.h
//  DesafioPrecoPassagem
//
//  Created by Felipe Martins on 19/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//
@property (retain, nonatomic) IBOutlet UIImageView *imageViewCarinha;
@property (retain, nonatomic) IBOutlet UILabel *labelPreco;
@property (retain, nonatomic) IBOutlet UISlider *sliderValor;
//
- (IBAction)alterarValorSlider:(UISlider *)sender;



@end
