//
//  ViewController.h
//  DesafioEscolheCorPicker
//
//  Created by Felipe Martins on 12/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

// Importamos o dataSource e o delegate
@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewCores;


// Arrays que armazenarão os nomes e as cores

@property (nonatomic, strong) NSArray *arrayNomesCores;
@property (nonatomic, strong) NSArray *arrayCores;

@end
