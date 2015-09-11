//
//  ViewController.h
//  UISlider
//
//  Created by Felipe Martins on 05/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UILabel *labelValor;
@property (retain, nonatomic) IBOutlet UISlider *sliderUnico;

/* UISlider - Slider é uma barra horiontal que representa um intervalo de valores
 
    A "bolinha" do meio é conhecida como thumb
    O espaço a esquerda dela é conhecido como Minimum Track
    O espaço a direita é conhecido como Maximum Value
 
*/

//

- (IBAction)alterarSliderUnico:(UISlider *)sender;


@end
