//
//  ViewController.h
//  imageViewAnimada
//
//  Created by Felipe Martins on 19/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIImageView *imageViewUnica;

// Array que conterá asa imagens

@property (nonatomic, retain) NSMutableArray *arrayImagens;

@end
