//
//  ViewController.h
//  UIPickerViewComMaisDeUmaColuna
//
//  Created by Felipe Martins on 10/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *meuPickerView;


// Criando 2 arrays para serem as referencias para os nossos components

@property (nonatomic, strong) NSArray *arrayNomes;
@property (nonatomic, strong) NSArray *arraySobrenomes;

@end
