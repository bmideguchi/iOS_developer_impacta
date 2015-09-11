//
//  FirstViewController.h
//  DesafioConversoresTabbed
//
//  Created by Felipe Martins on 03/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelReal;
@property (weak, nonatomic) IBOutlet UILabel *labelDollar;
@property (weak, nonatomic) IBOutlet UISlider *sliderConversor;

//
- (IBAction)converterMoeda:(UISlider *)sender;

@end
