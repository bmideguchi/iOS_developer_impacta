//
//  ViewController.h
//  DesafioAnimacaoGirafa
//
//  Created by Felipe Martins on 21/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (nonatomic, retain) NSMutableArray *arrayImagens;

@property (retain, nonatomic) IBOutlet UIImageView *imageView1;
@property (retain, nonatomic) IBOutlet UIImageView *imageView2;
@property (retain, nonatomic) IBOutlet UIImageView *imageView3;
@property (retain, nonatomic) IBOutlet UIImageView *imageView4;

@property (retain, nonatomic) IBOutlet UISegmentedControl *segmentedMalandro;

- (IBAction)animar:(UISegmentedControl *)sender;

// Criando um método único que prepara a animação
-(void)prepararAnimacao:(UIImageView *)imageViewParaAnimar;

@end
