//
//  ViewController.h
//  UIGestureReconizer
//
//  Created by Felipe Martins on 07/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *viewzinha;


// Método que será disparado  pelo gesto de TAP

-(void)disparouTap:(UITapGestureRecognizer *)gestoTap;


// Método disparado pelo SWIPE

-(void)disparouSwipe:(UISwipeGestureRecognizer *)gestoSwipe;

// Método disparado pelon PAN

-(void)disparouPan:(UIPanGestureRecognizer *)gestoPan;


// Método disparado pelo LONGPRESS

-(void)disparouLongPress:(UILongPressGestureRecognizer *)gestoLongPress;

// Método disparado pelo ROTATION

-(void)disparouRotation:(UIRotationGestureRecognizer *)gestoRotation;

// Método disparado pelo PINCH

-(void)disparouPinch:(UIPinchGestureRecognizer *)gestoPinch;

@end
