//
//  ViewController.m
//  RelembrandoID
//
//  Created by Felipe Martins on 23/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alterouSegmentedCima:(id)sender {
    
    UISegmentedControl *segmentedTemporario = (UISegmentedControl *)sender;
    
    NSLog(@"%i",segmentedTemporario.selectedSegmentIndex);
    

}

- (IBAction)alterouSegmentedBaixo:(UISegmentedControl *)sender {
    
    
    NSLog(@"%i",sender.selectedSegmentIndex);
    
    
}
@end
