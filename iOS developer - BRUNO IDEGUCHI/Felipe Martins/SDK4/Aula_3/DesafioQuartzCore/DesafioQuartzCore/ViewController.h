//
//  ViewController.h
//  DesafioQuartzCore
//
//  Created by Felipe Martins on 19/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
// Importando o QuartzCore
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageViewUnica;
@property (weak, nonatomic) IBOutlet UIView *viewzinha;

//
@property (weak, nonatomic) IBOutlet UISlider *sliderCornerImagem;
@property (weak, nonatomic) IBOutlet UISlider *sliderBorderImagem;
@property (weak, nonatomic) IBOutlet UISlider *sliderShadowImagem;

//
@property (weak, nonatomic) IBOutlet UISlider *sliderCornerViewzinha;
@property (weak, nonatomic) IBOutlet UISlider *sliderBorderViewzinha;
@property (weak, nonatomic) IBOutlet UISlider *sliderShadowViewzinha;


//

- (IBAction)configurarImagem:(UISlider *)sender;


- (IBAction)configurarViewzinha:(UISlider *)sender;


@end
