//
//  ViewController.h
//  desafioEscolheCorColorPicker
//
//  Created by NoiteA on 10/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewEscolheCor;

@property (strong, nonatomic) NSArray *arrayCores;

@property (weak, nonatomic) IBOutlet UILabel *labelUnica;

@property (weak, nonatomic) NSArray *arrayComBackgroundCores;

@end
