//
//  ViewController.h
//  desafioAnimacaoGirafa
//
//  Created by NoiteA on 21/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UIImageView *imageViewTopLeft;

@property (retain, nonatomic) IBOutlet UIImageView *imageViewTopRight;

@property (retain, nonatomic) IBOutlet UIImageView *imageViewBottomLeft;

@property (retain, nonatomic) IBOutlet UIImageView *imageViewBottomRight;

@property (retain, nonatomic) IBOutlet UISegmentedControl *segmentedControlUnico;

//Criar a mutable array que contem os frames
@property (retain, nonatomic) NSMutableArray *mutableArrayAnimacaoGirafa;

- (IBAction)segmentedControlEscolherGirafa:(UISegmentedControl *)sender;




@end
