//
//  ViewController.h
//  pickerViewComMaisDeUmaColuna
//
//  Created by NoiteA on 10/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *meuPickerView;

//Criando 2 arrays para serem as referências para os nossos components

@property (nonatomic, strong) NSArray *arrayNomes;
@property (nonatomic, strong) NSArray *arraySobrenomes;

@end
