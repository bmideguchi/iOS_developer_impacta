//
//  SecondViewController.h
//  DesafioConversoresTabbed
//
//  Created by Felipe Martins on 03/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelPeso;
@property (weak, nonatomic) IBOutlet UILabel *labelAltura;
@property (weak, nonatomic) IBOutlet UISlider *sliderPeso;
@property (weak, nonatomic) IBOutlet UISlider *sliderAltura;
@property (weak, nonatomic) IBOutlet UILabel *labelIMC;

//

- (IBAction)calcularIMC:(UISlider *)sender;



@end
