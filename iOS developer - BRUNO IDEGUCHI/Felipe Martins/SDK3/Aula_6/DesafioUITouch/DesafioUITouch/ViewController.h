//
//  ViewController.h
//  DesafioUITouch
//
//  Created by Felipe Martins on 31/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelX;
@property (weak, nonatomic) IBOutlet UILabel *labelY;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewUnica;


//

// Craindo nossa variável que receberá os toques
@property (nonatomic, strong) UITouch *toque;

@end
