//
//  ViewController.h
//  CountDownDuration
//
//  Created by Felipe Martins on 12/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIDatePicker *meuDatePicker;
@property (weak, nonatomic) IBOutlet UILabel *labelSegundos;
- (IBAction)iniciar:(UIButton *)sender;

@end
