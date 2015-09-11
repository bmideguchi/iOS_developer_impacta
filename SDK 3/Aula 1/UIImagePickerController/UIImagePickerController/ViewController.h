//
//  ViewController.h
//  UIImagePickerController
//
//  Created by NoiteA on 19/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

/*UI IMAGE PICKER CONTROLLER
 
 Um UIImagePickerController utiliza recursos de um UINavigationController, por esse motivo, precisamos incluir o UINAvigationControllerDelegate no projeto. Além do próprio delegate do UIImagePicker (UIImagePickerControllerDelegate)
 
 */

@interface ViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>


//Criamos uma outlet para nossa imageView
@property (weak, nonatomic) IBOutlet UIImageView *imageViewFoto;


//Criamos actions para nossos botões
- (IBAction)resgatar:(UIButton *)sender;

- (IBAction)capturar:(UIButton *)sender;

@end
