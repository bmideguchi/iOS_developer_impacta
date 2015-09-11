//
//  ViewController.h
//  aula6desafio1
//
//  Created by NoiteA on 08/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControlCores;


- (IBAction)segmentedControlMudarCor:(UISegmentedControl *)sender;

@property (nonatomic, assign)int escolha;
@property (nonatomic, retain)NSArray *arrayCores;

@end
