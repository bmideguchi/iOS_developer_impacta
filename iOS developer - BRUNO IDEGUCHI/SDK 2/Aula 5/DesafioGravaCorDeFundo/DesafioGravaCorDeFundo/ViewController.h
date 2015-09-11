//
//  ViewController.h
//  DesafioGravaCorDeFundo
//
//  Created by Felipe Martins on 08/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedCores;


//

@property (nonatomic, assign) int escolha;
@property (nonatomic, strong) NSArray *arrayCores;

//


- (IBAction)escolherCorDeFundo:(UISegmentedControl *)sender;


@end
