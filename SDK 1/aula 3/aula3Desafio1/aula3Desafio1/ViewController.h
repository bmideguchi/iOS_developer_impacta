//
//  ViewController.h
//  aula3Desafio1
//
//  Created by NoiteA on 05/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (retain, nonatomic) IBOutlet UILabel *labelExibeTabuada;

@property (retain, nonatomic) IBOutlet UISegmentedControl *segmentedControlTabuada;

- (IBAction)alterarSegmentedTabuada:(UISegmentedControl *)sender;

@end
